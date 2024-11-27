# Fetching Web Page Content with curl

In this step, we will learn how to use the curl command to fetch the content of web pages.

First, let's try fetching the homepage of the curl project again, but this time, we'll use the `-o` option to save the output to a file:

```bash
curl -o curl_homepage.html https://curl.se
```

Example output:

```
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 31748  100 31748    0     0  93644      0 --:--:-- --:--:-- --:--:-- 93644
```

The `-o` option specifies the output file name, in this case, `curl_homepage.html`. The output shows the progress of the download, including the total size of the file, the download speed, and the time taken to complete the download.

You can also use the `-s` (silent) option to suppress the progress output and only show the fetched content:

```bash
curl -s https://curl.se
```

Example output:

```html
<!doctype html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>curl - transfer data with URL</title>
    ...
  </head>
</html>
```

The `-s` option makes the output more concise, as it only shows the fetched content without the progress information.

Another useful option is `-I` (or `--head`), which allows you to fetch only the headers of a web page, without the actual content:

```bash
curl -I https://curl.se
```

Example output:

```
HTTP/1.1 200 OK
Server: nginx/1.14.0 (Ubuntu)
Date: Wed, 19 Apr 2023 06:34:26 GMT
Content-Type: text/html
Content-Length: 31748
Last-Modified: Fri, 07 Apr 2023 14:37:54 GMT
Connection: close
ETag: "64306f62-7b0c"
Accept-Ranges: bytes
```

The output shows the HTTP headers, which can be useful for understanding the server's response and troubleshooting any issues.

In the next step, we'll explore how to use curl to download files from the web.
