import 'package:flutter/material.dart';

class Currenccy extends StatefulWidget{
  const  Currenccy({super.key});
  @override
  State createState()=>_Currency();  
}
 class _Currency extends State{
  double result =0;
  final TextEditingController textEditingController = TextEditingController();
    
  
  @override
  Widget build(BuildContext context) {
    const border =  OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all( Radius.circular(40)),
    );
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 72, 113, 133),
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 72, 113, 133),
      elevation: 0,
      title: Center(child:  Text("Currency Coverter")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Container(
               padding: const EdgeInsets.all(8.0),
                      margin:const  EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                     color: Colors.green,
                     borderRadius: BorderRadius.circular(10) 
                  ),
               child: Text(
               result.toString(),
        
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900,color: Colors.white),
            ),
             ),
              Padding(
               padding: EdgeInsets.all(8.0),
               child: TextField(
                style: TextStyle(
                  color: Colors.black,
                ),

                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  enabledBorder: border,
                  focusedBorder: border,
                  hintText:
                    "Please enter in Usd",
                  hintStyle: TextStyle(
                    color: Colors.black
                  ),
                 prefixIcon: Icon(
                   Icons.monetization_on_outlined,
                 ),
                prefixIconColor: Colors.black,
            ),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: true,
                ) ,
                controller: textEditingController,
            ),
             ),
            //raised
            //appears like text
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                //debug,release,profile
                
                   setState(() {
                   result = (double.parse(textEditingController.text)*81);
                   });
                
              },
                style: TextButton.styleFrom(
                    
                  backgroundColor:Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity,50),
              //minimumSize,maximumSize,fixedSize
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
            
                child: Text("Convert ")),
            )
          ],
        ),
      ),
    );
  }
 }
 

