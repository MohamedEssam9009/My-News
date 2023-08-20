import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});

  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: articalModel.image != null
              ? Image.network(
                  articalModel.image!,
                  height: 200.0,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : Placeholder(child: Image.asset('assets/placeholder.png')),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Text(
          articalModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(
          articalModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14.0),
        ),
      ],
    );
  }
}
