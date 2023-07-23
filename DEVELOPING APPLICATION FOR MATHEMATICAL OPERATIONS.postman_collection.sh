{
	"info": {
		"_postman_id": "bd42b1b0-fad5-4437-ac40-8037d11ddb66",
		"name": "DEVELOPING APPLICATION FOR MATHEMATICAL OPERATIONS",
		"description": "1. _**add : {{BaseUrl}}/add/a/b**_\n2. _**substract : {{BaseUrl}}/subtract/a/b**_\n3. _**multiply : {{BaseUrl}}/multiply/a/b**_\n4. _**divide : {{BaseUrl}}/divide/a/b**_\n5. _Factorial : {{BaseUrl}}/factorial?a=_**\n6. _IsPrime :: {{BaseUrl}}/isPrime?a=_**",
		"schema": "https://schema.getpostman.com/json/collection/v2.0.0/collection.json",
		"_exporter_id": "28031818",
		"_collection_link": "https://gold-astronaut-706993.postman.co/workspace/6d25a4b9-1438-450b-811b-58f1a81711fd/collection/28031818-bd42b1b0-fad5-4437-ac40-8037d11ddb66?action=share&creator=28031818&source=collection_link"
	},
	"item": [
		{
			"name": "Addition",
			"request": {
				"method": "GET",
				"header": [],
				"url": "{{BaseUrl}}/add/55/78"
			},
			"response": []
		},
		{
			"name": "Multiplication",
			"request": {
				"method": "GET",
				"header": [],
				"url": "{{BaseUrl}}/multiply/5/9"
			},
			"response": []
		},
		{
			"name": "Division",
			"request": {
				"method": "GET",
				"header": [],
				"url": "localhost:8080/operation/divide/55/9"
			},
			"response": []
		},
		{
			"name": "Subtraction",
			"request": {
				"method": "GET",
				"header": [],
				"url": "{{BaseUrl}}/subtract/55/9"
			},
			"response": []
		},
		{
			"name": "Factorial",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "{{BaseUrl}}/factorial?a=5",
					"host": [
						"{{BaseUrl}}"
					],
					"path": [
						"factorial"
					],
					"query": [
						{
							"key": "a",
							"value": "5"
						}
					]
				}
			},
			"response": []
		},
		{
			"name": "IsPrime",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "{{BaseUrl}}/isPrime?a=55",
					"host": [
						"{{BaseUrl}}"
					],
					"path": [
						"isPrime"
					],
					"query": [
						{
							"key": "a",
							"value": "55"
						}
					]
				}
			},
			"response": []
		}
	],
	"event": [
		{
			"listen": "prerequest",
			"script": {
				"type": "text/javascript",
				"exec": [
					""
				]
			}
		},
		{
			"listen": "test",
			"script": {
				"type": "text/javascript",
				"exec": [
					""
				]
			}
		}
	],
	"variable": [
		{
			"key": "BaseUrl",
			"value": "http://localhost:8080/operation",
			"type": "string"
		}
	]
}