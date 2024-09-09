import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){

  runApp( const myapp());
}
  class myapp  extends StatelessWidget {
    const myapp ({super.key});

    @override
    Widget build(BuildContext context) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(child: Column(
            children: [
              CircleAvatar(radius:80 ,
                backgroundImage: AssetImage('assests/images/my_picture.jpg'),
              ),
              SizedBox(height: 12,),
              Text('Ahmed moustafa',
              style: TextStyle(
                color: Colors.white,fontWeight:FontWeight.bold,fontSize: 24),
              ),

              Text('ahmedmoustafa43702@gmail.com',
              style: TextStyle(
                color: Colors.white70
              ),),
              SizedBox(height: 12,),
              ElevatedButton(onPressed: (){}, child: Text('UPGradeToPro',
              style: TextStyle(color:  Colors.black,fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[700],)
              ),
              SizedBox(height: 12,),
              menucard(icon: Icons.settings,title: 'setting'),
              menucard(icon: Icons.preview,title: 'preview',),
              menucard(icon: Icons.help,title: 'help & support',),
              menucard(icon: Icons.history,title: 'purchesHostory',),
              menucard(icon: Icons.mobile_friendly,title: 'invite a friend',),
              menucard(icon: Icons.logout,title: 'logout',)
              
            ],
          ),
          ),
            ),
      );
    }
  }
  class menucard extends StatelessWidget {
  final String title;
  final IconData icon;
    menucard({required this.title,required this.icon});

    @override
    Widget build(BuildContext context) {
      return Card(
        margin: EdgeInsets.all(10),
        color: Colors.grey[800],
        child: ListTile(
          leading: Icon(icon,color: Colors.white,),
          title: Text(title,style: TextStyle(color: Colors.white),),
          trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,),
          
        ),
      );

      
    }
  }





