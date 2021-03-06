import 'dart:html';

import 'package:flutter/material.dart';
import 'package:video/comment_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Comment extends StatefulWidget {
  const Comment({ Key? key }) : super(key: key);

  @override
  _CommentState createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  List<Comment> comments=[];
  Future<void> getComments() async{
    try{
     Response response=await http.get("https://video-sharing");
     comments=jsonDecode(response.body());
    }
    catch(e){

    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: comments.map((comment){
          return CommentCard(comment); 
        }).toList(),
      )
    );
  }
}
/*Text('comment as $user.name',
          style:TextStyle(
           fontSize: 20,
           fontWeight:FontWeight.w500 
          )
          ),
          TextField(
           decoration: InputDecoration(
             border: OutlineInputBorder(),
             hintText: 'comment here'
           ), 
          ),*/
          DateTime now=DateTime.parse(time)
          now.add(Duration(seconds:3));
Navigator.pushReplacementNamed(context,'/video/show',arguments:{
 videoId:this.videoId,
});
Map data=ModalRoute.of(context).settings.arguments;
body:ListView.builder(
  itemCount:videos.length,
  itemBuilder:(context,index){
    return Card(
      child:ListTile(
        onTap(){

        },
        leading:'leaing' ,
        title: 'cool title',
        trailing:'trailing'
        )
    )
  }
)