docker-compose up -d

KIBANA_RUNNING=1
while [ $KIBANA_RUNNING -eq 1 ]
do
    date    
    echo "Hostname : $(hostname)"
        sleep 100
	if curl http://localhost:5601/_cluster/health?pretty > /dev/null; then
		echo "kibana is up"
		sleep 60
		KIBANA_RUNNING=0		
		curl  -X POST 'localhost:5601/api/kibana/dashboards/import?exclude=index-pattern%20' -H 'kbn-xsrf: true' -H 'Content-Type: text/plain' -d '{
    "version": "7.12.1",
    "objects": [
        {
            "id": "cfe1f860-c3b2-11eb-bbeb-659b00ee9b69",
            "type": "dashboard",
            "namespaces": [
                "default"
            ],
            "updated_at": "2021-07-03T09:13:04.116Z",
            "version": "WzI2OCwxXQ==",
            "attributes": {
                "title": "vatrp sip code dashboard",
                "hits": 0,
                "description": "",
                "panelsJSON": "[{\"version\":\"7.12.1\",\"type\":\"lens\",\"gridData\":{\"x\":0,\"y\":0,\"w\":23,\"h\":24,\"i\":\"335056b0-6b20-43ad-b946-68ce94006954\"},\"panelIndex\":\"335056b0-6b20-43ad-b946-68ce94006954\",\"embeddableConfig\":{\"enhancements\":{\"dynamicActions\":{\"events\":[{\"eventId\":\"825d9cfd-d8cc-4689-a6b9-dc6f269d5068\",\"triggers\":[\"FILTER_TRIGGER\"],\"action\":{\"name\":\"test-drilldown\",\"config\":{\"useCurrentFilters\":true,\"useCurrentDateRange\":true},\"factoryId\":\"DASHBOARD_TO_DASHBOARD_DRILLDOWN\"}}]}},\"attributes\":{\"title\":\"Pie-Sipcode-Timestamp\",\"type\":\"lens\",\"visualizationType\":\"lnsPie\",\"state\":{\"datasourceStates\":{\"indexpattern\":{\"layers\":{\"75832318-0b3b-4930-bc58-8ae00cb4baa6\":{\"columnOrder\":[\"5378c06d-8b05-452a-8ef1-795a47462242\",\"216ac7dc-a1e9-45a7-a22d-f92ee0044549\",\"d6539f3f-2a2e-4dcd-98f5-f164ea9dac4e\"],\"columns\":{\"5378c06d-8b05-452a-8ef1-795a47462242\":{\"sourceField\":\"sip_explanation.keyword\",\"isBucketed\":true,\"dataType\":\"string\",\"scale\":\"ordinal\",\"operationType\":\"terms\",\"label\":\"Top values of sip_explanation.keyword\",\"params\":{\"otherBucket\":true,\"size\":10,\"missingBucket\":false,\"orderBy\":{\"type\":\"alphabetical\"},\"orderDirection\":\"asc\"}},\"216ac7dc-a1e9-45a7-a22d-f92ee0044549\":{\"label\":\"Top values of log.file.path.keyword\",\"dataType\":\"string\",\"operationType\":\"terms\",\"scale\":\"ordinal\",\"sourceField\":\"log.file.path.keyword\",\"isBucketed\":true,\"params\":{\"size\":3,\"orderBy\":{\"type\":\"alphabetical\"},\"orderDirection\":\"asc\",\"otherBucket\":true,\"missingBucket\":false}},\"d6539f3f-2a2e-4dcd-98f5-f164ea9dac4e\":{\"sourceField\":\"Records\",\"isBucketed\":false,\"dataType\":\"number\",\"scale\":\"ratio\",\"operationType\":\"count\",\"label\":\"Count of records\"}},\"incompleteColumns\":{}}}}},\"visualization\":{\"shape\":\"pie\",\"layers\":[{\"legendDisplay\":\"default\",\"nestedLegend\":false,\"layerId\":\"75832318-0b3b-4930-bc58-8ae00cb4baa6\",\"metric\":\"d6539f3f-2a2e-4dcd-98f5-f164ea9dac4e\",\"numberDisplay\":\"percent\",\"groups\":[\"5378c06d-8b05-452a-8ef1-795a47462242\",\"216ac7dc-a1e9-45a7-a22d-f92ee0044549\",\"216ac7dc-a1e9-45a7-a22d-f92ee0044549\"],\"categoryDisplay\":\"default\"}]},\"query\":{\"query\":\"\",\"language\":\"kuery\"},\"filters\":[]},\"references\":[{\"type\":\"index-pattern\",\"id\":\"39cce920-ba5c-11eb-b2b5-afea47e7a167\",\"name\":\"indexpattern-datasource-current-indexpattern\"},{\"type\":\"index-pattern\",\"id\":\"39cce920-ba5c-11eb-b2b5-afea47e7a167\",\"name\":\"indexpattern-datasource-layer-75832318-0b3b-4930-bc58-8ae00cb4baa6\"}]}}},{\"version\":\"7.12.1\",\"gridData\":{\"x\":23,\"y\":0,\"w\":24,\"h\":24,\"i\":\"1ab384bb-41bf-4f2c-b9d4-9e0f9b43660e\"},\"panelIndex\":\"1ab384bb-41bf-4f2c-b9d4-9e0f9b43660e\",\"embeddableConfig\":{\"enhancements\":{}},\"panelRefName\":\"panel_1\"}]",
                "optionsJSON": "{\"hidePanelTitles\":false,\"useMargins\":true}",
                "version": 1,
                "timeRestore": false,
                "kibanaSavedObjectMeta": {
                    "searchSourceJSON": "{\"query\":{\"query\":\"\",\"language\":\"kuery\"},\"filter\":[]}"
                }
            },
            "references": [
                {
                    "type": "index-pattern",
                    "id": "39cce920-ba5c-11eb-b2b5-afea47e7a167",
                    "name": "indexpattern-datasource-current-indexpattern"
                },
                {
                    "type": "index-pattern",
                    "id": "39cce920-ba5c-11eb-b2b5-afea47e7a167",
                    "name": "indexpattern-datasource-layer-75832318-0b3b-4930-bc58-8ae00cb4baa6"
                },
                {
                    "name": "drilldown:DASHBOARD_TO_DASHBOARD_DRILLDOWN:825d9cfd-d8cc-4689-a6b9-dc6f269d5068:dashboardId",
                    "type": "dashboard",
                    "id": "cfe1f860-c3b2-11eb-bbeb-659b00ee9b69"
                },
                {
                    "name": "panel_1",
                    "type": "search",
                    "id": "8626fd30-d4ea-11eb-a511-e527d2bce782"
                },
                {
                    "id": "c3c22e10-c3b2-11eb-bbeb-659b00ee9b69",
                    "type": "tag",
                    "name": "tag-c3c22e10-c3b2-11eb-bbeb-659b00ee9b69"
                },
                {
                    "id": "cd193b70-c3b2-11eb-bbeb-659b00ee9b69",
                    "type": "tag",
                    "name": "tag-cd193b70-c3b2-11eb-bbeb-659b00ee9b69"
                }
            ],
            "migrationVersion": {
                "dashboard": "7.11.0"
            },
            "coreMigrationVersion": "7.12.1"
        },
        {
            "id": "39cce920-ba5c-11eb-b2b5-afea47e7a167",
            "type": "index-pattern",
            "namespaces": [
                "default"
            ],
            "updated_at": "2021-06-29T17:04:25.157Z",
            "version": "WzksMV0=",
            "attributes": {
                "fieldAttrs": "{\"sip_code_message\":{\"count\":2},\"sip_code\":{\"count\":12},\"sipcode\":{\"count\":37},\"loglevel\":{\"count\":2},\"logtimestamp\":{\"count\":17},\"message\":{\"count\":21},\"@timestamp\":{\"count\":7},\"log.file.path\":{\"count\":6},\"fields.type\":{\"count\":2},\"tags.keyword\":{\"count\":1},\"_type\":{\"count\":2},\"session\":{\"count\":11},\"sip_url\":{\"count\":4},\"sipurl.keyword\":{\"count\":1},\"sipurl\":{\"count\":9},\"parsed_message\":{\"count\":4},\"sip_explanation\":{\"count\":5},\"siphost\":{\"count\":5},\"sipuser\":{\"count\":4},\"sip\":{\"count\":4},\"host.name\":{\"count\":3},\"saved_message\":{\"count\":2}}",
                "title": "logstash-*",
                "timeFieldName": "@timestamp",
                "fields": "[]",
                "runtimeFieldMap": "{}"
            },
            "references": [],
            "migrationVersion": {
                "index-pattern": "7.11.0"
            },
            "coreMigrationVersion": "7.12.1"
        },
        {
            "id": "8626fd30-d4ea-11eb-a511-e527d2bce782",
            "type": "search",
            "namespaces": [
                "default"
            ],
            "updated_at": "2021-06-29T17:04:25.157Z",
            "version": "WzEwLDFd",
            "attributes": {
                "title": "sip-codes-and-messages",
                "description": "",
                "hideChart": true,
                "hits": 0,
                "columns": [
                    "sipcode",
                    "sip_explanation",
                    "sip",
                    "sipuser",
                    "siphost",
                    "message",
                    "log.file.path"
                ],
                "sort": [
                    [
                        "@timestamp",
                        "asc"
                    ]
                ],
                "version": 1,
                "kibanaSavedObjectMeta": {
                    "searchSourceJSON": "{\"query\":{\"query\":\"sip:* or sipcode:*\",\"language\":\"kuery\"},\"filter\":[],\"indexRefName\":\"kibanaSavedObjectMeta.searchSourceJSON.index\"}"
                }
            },
            "references": [
                {
                    "name": "kibanaSavedObjectMeta.searchSourceJSON.index",
                    "type": "index-pattern",
                    "id": "39cce920-ba5c-11eb-b2b5-afea47e7a167"
                }
            ],
            "migrationVersion": {
                "search": "7.9.3"
            },
            "coreMigrationVersion": "7.12.1"
        },
        {
            "id": "c3c22e10-c3b2-11eb-bbeb-659b00ee9b69",
            "type": "tag",
            "namespaces": [
                "default"
            ],
            "updated_at": "2021-06-29T17:04:25.157Z",
            "version": "WzExLDFd",
            "attributes": {
                "name": "vatrp",
                "description": "",
                "color": "#60cf46"
            },
            "references": [],
            "coreMigrationVersion": "7.12.1"
        },
        {
            "id": "cd193b70-c3b2-11eb-bbeb-659b00ee9b69",
            "type": "tag",
            "namespaces": [
                "default"
            ],
            "updated_at": "2021-06-29T17:04:25.157Z",
            "version": "WzEyLDFd",
            "attributes": {
                "name": "sipcode",
                "description": "",
                "color": "#72eca9"
            },
            "references": [],
            "coreMigrationVersion": "7.12.1"
        }
    ]
}'
	fi
done