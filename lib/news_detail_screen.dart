import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class NewsDetails extends StatefulWidget {
  final String newImage,newsTitle,newsDate,author, descripition, content,source;
  const NewsDetails({Key? key,
  required this.newImage,
    required this.newsTitle,
    required this.newsDate,
    required this.author,
    required this.source,
    required this.content,
    required this.descripition,

  }) : super(key: key);


  @override
  State<NewsDetails> createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  final format = DateFormat('MMMM dd,yyyy');
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * 1;
    final height = MediaQuery.sizeOf(context).height * 1;
    DateTime dateTime = DateTime.parse(widget.newsDate);
    return  Scaffold(


      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        elevation: 0,

      ),
      body: Stack(
        children: [
          Container(
            child: Container(
              height: height*.60,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(40),
                ),


                child:CachedNetworkImage(

              imageUrl: widget.newImage,
                fit: BoxFit.cover,
                  placeholder: (context,ulr) => Center(
                    child: CircularProgressIndicator()),
              ),

            ),
          ),
          ),
          Container(

            height: height *.6,

            margin: EdgeInsets.only(
                top: height * .45,
            ),
            padding: EdgeInsets.only(
              top: 20,right: 20,left: 20
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(40),
              ),
            ),

            child: ListView(
              children: [
                Text(widget.newsTitle, style: GoogleFonts.poppins(
                  fontSize: 20,color: Colors.black,fontWeight: FontWeight.w700

                ) ,),
                SizedBox(
                  height: height*.02,
                ),
                Row(
                  children: [
                   Expanded(child:  Text(widget.source,style: GoogleFonts.poppins(
                        fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500

                    ) ),),
                    Text(format.format(dateTime),style: GoogleFonts.poppins(
                        fontSize: 12,color: Colors.black,fontWeight: FontWeight.w500

                    ) )
                    
                  ],

                ),
                SizedBox(
                  height: height * .03,
                ),
                Text(widget.descripition,style: GoogleFonts.poppins(
                    fontSize: 15,color: Colors.black,fontWeight: FontWeight.w500

                ) ),


              ],
            ),
          ),
        ],

      ),

    );
  }
}
