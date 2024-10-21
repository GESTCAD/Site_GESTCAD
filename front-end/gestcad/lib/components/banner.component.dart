import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget banner(wscreen,
    {image = 'images/bannerLogo.png', BoxFit fit = BoxFit.cover}) {
  return Container(
    width: wscreen,
    decoration: BoxDecoration(
        // color: const Color(0xffF0EEEA),
        borderRadius: BorderRadius.circular(10)),
    child: Center(
        child: CachedNetworkImage(
      imageUrl: image,
      fit: fit,
      errorWidget: (context, url, error) => Image.asset(
        image, // Caminho para a imagem padrão local
        fit: fit,
      ),
    )),
  );
}
