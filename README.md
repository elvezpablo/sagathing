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

Proposed SQL tables for relationship mapping.

_Sagas_

1. ID
2. Name
3. <Additional Fields>

_Names_

1. ID
2. CharacterID
3. SagaID
4. Value


_Characters_

1. ID
2. CommonName
3. `Additional Fields...`

_Relationships_

1. ID
2. SagaID
3. CharacterID
4. CharacterID



