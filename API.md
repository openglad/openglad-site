Openglad Site API Documentation

# Endpoints

## Upload a campaign

**POST /campaigns**

Campaign uploading uses **multipart/form-data** requests.

### Parameters

<table>
    <tr>
        <td>Parameter</td>
        <td>Description</td> 
        <td>Required</td>
    </tr>
    <tr>
        <td>file</td>
        <td>multipart/form-data parameter containing campaign file to upload</td>
        <td>Yes</td>
    </tr>
</table>

### Response

```
{
  "id" : "b3fa51be-3a5c-4f4f-9bb8-e3da400ecbad",
  "formatVersion" : 1,
  "title" : "Gladiator",
  "version" : 1,
  "authors" : "Forgotten Sages",
  "contributors" : null,
  "description" : "You lead a band of mercenaries \nand adventurers, each seeking to \nearn glory and gold in this hostile \nworld through conquest.  With only \nthe money you stole from an imperial \nguardsman, along with your allies \nTroy and the Commander, you must \nchoose your troops wisely in\norder to survive, and make a profit.\n\nDon't forget to train your \ntroops once you have the money, as \nsufficient skill overcomes superior \nnumbers. After each successful \nmission, you will have the opportunity \nto squander your profits.  Save often, \nas you may quickly regret your choices.\n\nRemember, Troy and Commander\nare your friends, but not under your\npay.  You can't train them, and they\nmay leave your team at any time.\n\nNow, go out and seek your fortune..."
}
```

### Example curl command

```
curl -F file=@org.openglad.gladiator.glad http://openglad-site.appspot.com/campaigns
```

## Get campaign meta data

**GET /campaigns/{campaignId}**

## Parameters

None

## Response

```
{
  "id" : "b3fa51be-3a5c-4f4f-9bb8-e3da400ecbad",
  "formatVersion" : 1,
  "title" : "Gladiator",
  "version" : 1,
  "authors" : "Forgotten Sages",
  "contributors" : null,
  "description" : "You lead a band of mercenaries \nand adventurers, each seeking to \nearn glory and gold in this hostile \nworld through conquest.  With only \nthe money you stole from an imperial \nguardsman, along with your allies \nTroy and the Commander, you must \nchoose your troops wisely in\norder to survive, and make a profit.\n\nDon't forget to train your \ntroops once you have the money, as \nsufficient skill overcomes superior \nnumbers. After each successful \nmission, you will have the opportunity \nto squander your profits.  Save often, \nas you may quickly regret your choices.\n\nRemember, Troy and Commander\nare your friends, but not under your\npay.  You can't train them, and they\nmay leave your team at any time.\n\nNow, go out and seek your fortune..."
}
```

## Example curl command

```
curl -H Accept:application/json http://openglad-site.appspot.com/campaigns/b3fa51be-3a5c-4f4f-9bb8-e3da400ecbad
```

## Get campaign file

**GET /campaigns/{campaignId}/file**

## Parameters

None

## Response

Campaign file as `application/octet-stream` raw bytes.

## Example curl command

```
curl http://openglad-site.appspot.com/campaigns/b3fa51be-3a5c-4f4f-9bb8-e3da400ecbad/file > campaign.glad
```

## Get recent campaigns

**GET /campaigns/recent**

This returns recently uploaded campaigns in the past 7 days (max 50 campaigns).

## Parameters

None

## Response

```
[ {
  "id" : "b3fa51be-3a5c-4f4f-9bb8-e3da400ecbad",
  "formatVersion" : 1,
  "title" : "Gladiator",
  "version" : 1,
  "authors" : "Forgotten Sages",
  "contributors" : null,
  "description" : "You lead a band of mercenaries \nand adventurers, each seeking to \nearn glory and gold in this hostile \nworld through conquest.  With only \nthe money you stole from an imperial \nguardsman, along with your allies \nTroy and the Commander, you must \nchoose your troops wisely in\norder to survive, and make a profit.\n\nDon't forget to train your \ntroops once you have the money, as \nsufficient skill overcomes superior \nnumbers. After each successful \nmission, you will have the opportunity \nto squander your profits.  Save often, \nas you may quickly regret your choices.\n\nRemember, Troy and Commander\nare your friends, but not under your\npay.  You can't train them, and they\nmay leave your team at any time.\n\nNow, go out and seek your fortune..."
} ]
```

## Example curl command

```
curl http://openglad-site.appspot.com/campaigns/recent
```
