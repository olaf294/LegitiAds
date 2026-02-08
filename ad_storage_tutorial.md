# Ad Storage Setup Tutorial

Below, you will find an example command to modify the ad storage with your ads.

```mcfunction
data merge storage legitiads:ads 
{
    ads:
        [
            "Simple Text Ad",
            {text:"Text Component Ad"},
            {text:"Colored Text Ad",color:green},
            [{text:"Very advanced ad that ",color:yellow},{text:"changes color!",color:red}]
        ]
}
```

Paste this command into a command block and modify it to fit your style!