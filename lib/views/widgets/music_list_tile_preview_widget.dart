import 'package:flutter/material.dart';

class MusicPreview extends StatelessWidget {
  final Function()? onTap;
  const MusicPreview({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: onTap,
        title: const Text("Dream On"),
        subtitle: const Text("02:31"),
        leading: const CircleAvatar(
          foregroundImage: NetworkImage(
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ffiverr-res.cloudinary.com%2Fimages%2Ft_main1%2Cq_auto%2Cf_auto%2Cq_auto%2Cf_auto%2Fgigs%2F20770442%2Foriginal%2Ff0ae1958a0dd3d1d7bdf5ca17b71204ad9c626c1%2Fcreate-your-photo-into-wpap-style.png&f=1&nofb=1&ipt=0b5ac16905979621af0dc8b89e0eca507b7f7c5d22fe01be952a44070126ff68&ipo=images",
          ),
        ),
      ),
    );
  }
}
