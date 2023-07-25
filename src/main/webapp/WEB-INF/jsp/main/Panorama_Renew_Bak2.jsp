<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Multiresolution panorama</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.css"/>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/pannellum@2.5.6/build/pannellum.js"></script>
    <style>
    #panorama {
        width: 1200px;
        height: 1000px;
    }
    </style>
</head>
<body>

<div id="panorama"></div>
<script>

pannellum.viewer('panorama', {   
	 
    "default": {
        "firstScene": "circle",
        "author": "Matthew Petroff",
        "sceneFadeDuration": 1000
    },

    "scenes": {
        "circle": {
            "title": "Mason Circle",
            "hfov": 110,
            "pitch": -3,
            "yaw": 117,
            "type": "multires",
    	    "multiRes": {
    	        "basePath": "/images/oleum_Panorama/gama/001",
    	        "path": "/%l/%s%y_%x",
    	        "fallbackPath": "/fallback/%s",
    	        "extension": "jpg",
    	        "tileResolution": 512,
    	        "maxLevel": 4,
    	        "cubeResolution": 2600
    	    },
            "hotSpots": [
                {
                    "pitch": -2.1,
                    "yaw": 132.9,
                    "type": "scene",
                    "text": "Spring House or Dairy",
                    "sceneId": "house"
                }
            ]
        },

        "house": {
            "title": "Spring House or Dairy",
            "hfov": 90,
            "yaw": 5,
            "type": "multires",
    	    "multiRes": {
    	        "basePath": "/images/oleum_Panorama/gama/002",
    	        "path": "/%l/%s%y_%x",
    	        "fallbackPath": "/fallback/%s",
    	        "extension": "jpg",
    	        "tileResolution": 512,
    	        "maxLevel": 4,
    	        "cubeResolution": 2600
    	    },
            "hotSpots": [
                {
                    "pitch": -0.6,
                    "yaw": 37.1,
                    "type": "scene",
                    "text": "Mason Circle",
                    "sceneId": "circle",
                    "targetYaw": -23,
                    "targetPitch": 2
                }
            ]
        }
    }
});
</script>

</body>
</html>