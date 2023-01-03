# Saga Relationship Map Project

Genealogy tool and database of Icelandic sagas. 

https://docs.google.com/document/d/1AIhROkJpB0eXNsnKn5S0YVadUur6PuoD2k2OSbXFA3U/edit#


## Family Echo Trees

1. [Aud](https://www.familyecho.com/?p=START&c=10pi2u1pfw1&f=704631213868810681)
2. [Thrym-Ketil](https://familyecho.com/?p=START&c=14ojogfpxfl&f=794147246474149859)

## Chart UIs

### Chart Display Links 

- https://www.lucidchart.com/blog/make-a-kinship-diagram-online
- https://www.thisiscolossal.com/2020/07/penguin-flowcharts-kyoto-sumida-aquariums/


### SQL Database

Core tables: 

_Sagas_

Very basic saga information including a slug for the url. 

_Characters_

Holds the common english name and an array of tags to group characters. Additional names are stored in the `names` table. 

_Names_

The names of characters per saga.

_Relationships_

The relationship of two characters in a saga with the type of relationship and order (`ordinal`) to account for first, second, third spouses. 

_Events_ 

The events per saga, these include births and marriages hence the `subject_id` may be an `id` from 
the `characters` table or `relationship` table. 

Requirement: When a relationship is created an event SHOULD be added. 

There is also an `ordinal` field to help put the events in chronological order and a `date` field if the date is known.

### Database

Cloudflare D1 Database

Database ID: `6d8a8159-08d6-47dd-9ded-e7fec9f5ba30`

Access will be via Cloudflare worker and API. 

#### Drizzle ORM for D1 

https://github.com/drizzle-team/drizzle-orm/tree/main/drizzle-orm-sqlite

## API 




## Graph Databases

### AWS Neptune

AWS has a hosted GraphDB with a 30 day free trial. 

https://aws.amazon.com/neptune/
### Neo4J 

Neo4j has a free tier for an always on instance of a neo4j database. It seems more that sufficient for this project. See website for additional details.

Database URL 

```txt
a0a16443.databases.neo4j.io:7687
```
## Discord as an IdP

Proposal to use Discord as the identity provider and Cloudflare as a service provider for user identity management. 

This would allow a user to click "Login with Discord" on the app to login to the page. 

This would main be for editors and administrators of the app. 

Proposed setup

1. Make app in Discord 
   1. Get client id, token and urls (see miniorange)
   2. https://discord.com/developers/docs/topics/oauth2
2. Add new OpenID Connect access to Cloudflare
   1. Settings → Add New → OpenID Connect → (form)
3. Back in the Discord dashboard, navigate to the OAuth2 section & Add Redirect button for adding the callback URL and click on the Save button.

### IdP Links
- 
- https://idp.miniorange.com/login-using-discord-as-oauth-server/
- https://developer.okta.com/docs/guides/social-login/discord/main/#test-the-integration