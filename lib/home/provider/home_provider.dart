import 'package:allinoneottplatforms/home/modal/home_modal.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{
  List<dModal> img=[
    dModal(name: 'Netflix',link: 'https://www.netflix.com/in/',img: 'https://tse4.mm.bing.net/th?id=OIP.PYbsCDdCwMDAbNesKJOHGgHaE8&pid=Api&P=0'),
    dModal(name: 'Amazon Prime',link: 'https://www.primevideo.com/',img: 'https://tse2.explicit.bing.net/th?id=OIP.NizqjahyQtUzWAOQT-EKBwHaE3&pid=Api&P=0'),
    dModal(name: 'Disney Hotstar',link: 'https://www.hotstar.com/in',img: 'https://tse3.explicit.bing.net/th?id=OIP.Mzc4s9Q1S-FgdriwMv1A1wHaHa&pid=Api&P=0'),
    dModal(name: 'Sony LIV',link: 'https://www.sonyliv.com/',img: 'https://tse2.mm.bing.net/th?id=OIP.5r-4a5mGH7mnFNk3iEovOwHaEt&pid=Api&P=0'),
    dModal(name: 'zee5',link: 'https://zee5.com/',img: 'https://tse1.mm.bing.net/th?id=OIP.onNPv3WwVa_EPHfPjF5ZiAHaHa&pid=Api&P=0'),
    dModal(name: 'Altbalaji',link: 'https://www.altbalaji.com/',img: 'https://tse2.mm.bing.net/th?id=OIP.U3d2OOSUDp2BiHZY_cu5LQHaHc&pid=Api&P=0'),
    dModal(name: 'Voot',link: 'https://www.voot.com/',img: 'https://yt3.ggpht.com/a/AGF-l78mwVIYcRx3gXnvWGI3G8k_8LsMY99JcAgbPg=s900-c-k-c0xffffffff-no-rj-mo'),
    dModal(name: 'Jiocinema',link: 'https://www.jiocinema.com/',img: 'https://yt3.ggpht.com/a/AATXAJz0QX3XkX94CLNM0og4J7a2FGPkdx31dNt-3w=s900-c-k-c0xffffffff-no-rj-mo'),
    dModal(name: 'Aha',link: 'https://www.aha.video/',img: 'https://vinron.in/wp-content/uploads/2021/06/Aha-1024x576.png'),
    dModal(name: 'MXplayer',link: 'https://www.mxplayer.in/',img: 'https://tse4.mm.bing.net/th?id=OIP.RC_Nmcb89tIczpUV96lXaAHaHa&pid=Api&P=0'),

  ];

  int i = 0;

  WebViewController? webViewController;

  void initConatroller()
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse('${img[i].link}'));
  }

  void chi(index)
  {
    i=index;
    notifyListeners();
  }
}