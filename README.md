# Saga Relationship Map Project

Genealogy tool and database of Icelandic sagas. 

https://docs.google.com/document/d/1AIhROkJpB0eXNsnKn5S0YVadUur6PuoD2k2OSbXFA3U/edit#



## Family Echo Trees

1. [Aud](https://www.familyecho.com/?p=START&c=10pi2u1pfw1&f=704631213868810681)
2. [Thrym-Ketil](https://familyecho.com/?p=START&c=14ojogfpxfl&f=794147246474149859)


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

### SQL Database

Proposed SQL tables for basic relationship mapping and an approval process.

_Sagas_

1. ID
2. Name
3. <Additional Fields>

_Names_

1. ID
2. CharacterID
3. SagaID
4. Value
5. ApprovedBy
6. ApprovedAt

_Characters_

1. ID
2. CommonName
3. `Additional Fields...`
4. ApprovedBy
5. ApprovedAt

_Relationships_

1. ID
2. SagaID
3. CharacterID
4. CharacterID
5. ApprovedBy
6. ApprovedAt


#### Cloudflare D1 Database

Database ID: `6d8a8159-08d6-47dd-9ded-e7fec9f5ba30`


## Discord as an IdP

Proposal to use Discord as the identity provider and Cloudflare as a service provider for user identity management. 

This would allow a user to click "Login with Discord" on the app to login to the page. 

This would main be for editors and administrators of the app. 

Proposed setup

1. Make app in Discord 
   1. 
2. Add OpenID Connect Access to 

### IdP Links

- 
- https://idp.miniorange.com/login-using-discord-as-oauth-server/
- https://developer.okta.com/docs/guides/social-login/discord/main/#test-the-integration