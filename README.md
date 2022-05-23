# AutoRemini v1
A macro that automatically uploads files to Remini Web

**DISCLAIMER!!**
This is just a macro. You'll still need your own Remini Web subscription in order to use it.

## Requirements
[Autohotkey](https://www.autohotkey.com/)

[A Remini Web subscription](https://app.remini.ai/)

[This Always on top script](https://github.com/voltuz/AutoRemini/files/8756815/always.on.top.zip)

## Usage and how to custom it
Pin your folder that contains the non-enhanced images always on top with the script i provided (CTRL+ALT+SPACE).

Download the .ahk script from the repo (If you don't know how to code ahk scripts here's the [documentation](https://www.autohotkey.com/docs/AutoHotkey.htm)).

<br/>

NOTES:

-I run the script from a [secondary keyboard](https://mediachance.com/multikeyboard/) but you can edit it if you want to start it just with a keyboard shortcut or a side mouse button, again read the [documentation](https://www.autohotkey.com/docs/AutoHotkey.htm) to learn more.

-You can use Window Spy to know your exact coordinates on screen (installed automatically with Autohotkey). All the coordinates on the script need to be from the "[Screen Position](https://user-images.githubusercontent.com/68356371/169887029-21711c47-c247-4040-bf80-370a61d7c14c.png)"

<br/>

### Breaking down the code
Replace "145" with the amount of images you have to enhance

```
Loop, 145
```

<br/>
<br/>

Replace "374" and "777" with the coordinates of [the first image inside the non-enhanced images folder](https://user-images.githubusercontent.com/68356371/169883842-1d3a769a-8bdb-43fc-afd4-7796606109e1.jpg)

Replace "1549" 1196" with the coordinates of your remini page (where you can drag and drop files into it)
```
MouseClickDrag, left, 374, 777, 1549, 1196, 40
```

<br/>
<br/>

Replace both "3554" and "674" with the coordinates of a random pixel of [this](https://user-images.githubusercontent.com/68356371/169873173-07ab69ab-1b95-4378-98fa-b4a64a398c9e.jpg) part of the screen, when an enhancement is done (the gray area on the side of the result)
```
PixelSearch, reminicolx, reminicoly, 3554, 674, 3554, 674, 0x0C0C0C, 0, Fast RGB
```

<br/>
<br/>

Replace "3624" and "159" with the coordinates of [the download button](https://user-images.githubusercontent.com/68356371/169883360-1d45c5c6-bb72-46df-aa4c-b1a6375c9932.jpg), when an enhancement is done
```
MouseClick, left, 3624, 159
```

<br/>
<br/>

Replace "145" and "167" with the coordinates of [the first image inside the non-enhanced images folder](https://user-images.githubusercontent.com/68356371/169883842-1d3a769a-8bdb-43fc-afd4-7796606109e1.jpg)
```
MouseClick, left, 145, 167
```

