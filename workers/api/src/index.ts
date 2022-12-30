export interface Env {
	// Example binding to KV. Learn more at https://developers.cloudflare.com/workers/runtime-apis/kv/
	// MY_KV_NAMESPACE: KVNamespace;
	//
	// Example binding to Durable Object. Learn more at https://developers.cloudflare.com/workers/runtime-apis/durable-objects/
	// MY_DURABLE_OBJECT: DurableObjectNamespace;
	//
	// Example binding to R2. Learn more at https://developers.cloudflare.com/workers/runtime-apis/r2/
	// MY_BUCKET: R2Bucket;

	DB: D1Database;
}

export default {
	async fetch(request: Request, env: Env) {
	  const { pathname } = new URL(request.url);
  
	  if (pathname === "/v1/sagas") {
		const s = "SELECT * FROM sagas;";
		const { results } = await env.DB.prepare(s).all();
		return Response.json(results);
	  }

	  if(pathname == "/v1/relationships") {
		const s = `
			SELECT 
				r.id, 
				r.type, 
				e.ordinal,
				e.type AS event_type,
				e.date,
				c1.name AS character_a,
				c1.id AS character_a_id,
				c2.name AS character_b,
				c2.id AS character_b_id
			FROM relationships AS r 
			INNER JOIN sagas AS s 
			ON s.id=r.saga_id
			INNER JOIN characters AS c1
			ON c1.id=r.character_a
			INNER JOIN characters AS c2
			ON c2.id=r.character_b
			INNER JOIN events AS e
			ON r.id = e.subject_id
			WHERE r.saga_id = ?
		`;

		const { results } = await env.DB.prepare(s).bind(15).all();		
		return Response.json(results);
	  }
	  
	  if(pathname == "/v1/characters") {
		const s = `
			SELECT c.id, c.name, c.tags 
			FROM characters AS  c
			INNER JOIN sagas_characters AS sc
			ON c.id = sc.character_id			
			WHERE sc.saga_id = ?
		`;		

		const { results } = await env.DB.prepare(s).bind(15).all();		
		return Response.json(results);
	  }

	  if(pathname == "/v1/events") {
		const s = `
			SELECT c.id, c.name, c.tags 
			FROM characters AS  c
			INNER JOIN sagas_characters AS sc
			ON c.id = sc.character_id
			WHERE sc.saga_id = ?
		`;

		const { results } = await env.DB.prepare(s).bind(15).all();		
		return Response.json(results);
	  }

	  if(pathname == "/v1/tags") {
		const s = `SELECT * from tags`;

		const { results } = await env.DB.prepare(s).all();		
		return Response.json(results);
	  }

	  if(pathname == "/v1/event_types") {
		const s = `SELECT * from event_types`;

		const { results } = await env.DB.prepare(s).all();		
		return Response.json(results);
	  }

	  if(pathname == "/v1/relationship_types") {
		const s = `SELECT * from relationship_types`;

		const { results } = await env.DB.prepare(s).all();		
		return Response.json(results);
	  }

	  return Response.json({version: "1.0.0"});
	},
  };
