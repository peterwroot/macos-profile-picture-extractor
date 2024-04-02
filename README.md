# macOS Profile Picture Extractor

<img src='/images/banner/memoji-00001.png' width='75'><img src='/images/banner/memoji-00002.png' width='75'><img src='/images/banner/memoji-00003.png' width='75'><img src='/images/banner/memoji-00004.png' width='75'><img src='/images/banner/memoji-00005.png' width='75'><img src='/images/banner/memoji-00006.png' width='75'><img src='/images/banner/memoji-00007.png' width='75'><img src='/images/banner/memoji-00008.png' width='75'><img src='/images/banner/memoji-00009.png' width='75'>

I've grown to quite like Apple's Memoji feature, and have started using my Memoji as my profile picture on basically every website that lets you set one. 

Apple does not provide a straightforward way to export your Memoji as an image, however you can set your macOS profile picture to a Memoji and then export that as an image.

This script is a wrapper around a command provided by John Galt on the [Apple Community forums](https://discussions.apple.com/thread/8027172?sortBy=best). The command extracts the current profile image from the macOS Directory Services.

## Usage

Clone the repo and run macos-profile-picture-extractor.sh on the command line. 

The image will be saved as a .JPG file in the working directory, with a random file name, so you can run the script repeatedly after making changes to your macOS profile picture - such as changing the background colour like in the banner above. 

<img src='/images/background-colours.png' width='450'>

## Quirks

I have noticed a few quirks that appear to be related to how macOS Directory Services saves your profile picture:

* Sometimes the image will be malformatted. This seems to occur when you run the command immediately after setting saving your profile picture. This resulted in images that would open in Preview, but not VS Code.

* Image size is inconsistent. Sometimes the command outputs 840x840 images, and sometimes 420x240 images.

## Background Removal

Unfortunately, one limitation of this method is that there is no way to obtain an image with a transparent background. 

I have had success using [remove.bg](https://www.remove.bg/). The light-grey 'Style' option seems to work best for this.

<img src='/images/memoji-light-grey.png' width='300'><img src='/images/memoji-transparent.png' width='300'>

## Alternatives

You can also convert your Memoji to a .PNG file with a transparent background using the following steps:

1. Send yourself an iMessage sticker of the Memoji you wish to save.
2. Right-click the sticker in Messages (on a Mac) and select **Open**. This will open the sticker as an image in Preview.
3. Save the image.

However, there are some 'poses' that are available in the macOS Memoji editor that are not available as stickers in iMessage:

<img src='/images/macos-editor-only/pic10336.jpg' width='150'><img src='/images/macos-editor-only/pic18403.jpg' width='150'><img src='/images/macos-editor-only/pic19964.jpg' width='150'>





