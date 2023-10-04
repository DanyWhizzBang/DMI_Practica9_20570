import 'dart:io';

import 'package:flutter/material.dart';
import 'package:practica8_200570/model/Media.dart';
class MediaListItem extends StatelessWidget{
  final Media media;
  MediaListItem(this.media);
  @override
  Widget build(BuildContext context){
    return new Card(
      child:new Column(
        children: <Widget>[
          new  FadeInImage.assetNetwork(
            placeholder: "assets/spinner.gif", 
            image: media.getBackDropUrl(),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.0,
            fadeInDuration: new Duration(milliseconds: 100),
            ),
               new Positioned(
                left:0.0,
                bottom: 0.0,
                right: 0.0,
                child: new Container(
                  decoration: new BoxDecoration(
                    color: Color.fromARGB(144, 40, 190, 50),
                  ),
                  constraints: new BoxConstraints.expand(
                    height: 55.0
                  ),
                ),
              ),
                new Positioned(
                  left: 10.0,
                  bottom: 30.0,
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      new Container(
                        child: new Text(
                          media.title,
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  )
                  ) 
        ],
      ),
    );
  }
}