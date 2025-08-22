import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class UserDetailPlaceholder extends StatelessWidget {
 
  const UserDetailPlaceholder({
    super.key,
    
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(      baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
      child: Row(
        children: [
          ClipOval(
            child: Container(
              height: 40.dp,
            width: 40.dp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFEFFAFE),
                    Colors.transparent,
                    Color(0xFFEFFAFE),
                  ],
                  stops: [0.89, 0.89, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 8),
                    blurRadius: 12,
                    spreadRadius: 0,
                    color: Colors.black.withValues(alpha:  0.08),
                  ),
                  const BoxShadow(
                    offset: Offset(-2, -2),
                    blurRadius: 2,
                    spreadRadius: -2,
                    color: Colors.white,
                  ),
                  const BoxShadow(blurRadius: 0),
                  const BoxShadow(
                    offset: Offset(2, 2),
                    blurRadius: 2,
                    spreadRadius: -2,
                    color: Colors.white,
                  ),
                ],
              ),
             
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 9.dp,width: 65.dp,decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.dp),color: Colors.black),),
              SizedBox(height: 4.dp,),
            
              Container(height: 6.dp,width: 40.dp,decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.dp),color: Colors.black,)),
            ],
          ),
        ],
      ),
    );
  }

}
