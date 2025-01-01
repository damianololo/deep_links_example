# Deep Links example

To go to the choosen path, for example: `/settings/details` you need to use

```cmd
adb shell am start -a android.intent.action.VIEW -c android.intent.category.BROWSABLE -d "https://yourDomain.com/settings/details" com.example.deep_links_example
```
