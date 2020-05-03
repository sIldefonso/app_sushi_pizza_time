library funcoes;

import 'package:url_launcher/url_launcher.dart';
import 'constantes.dart' as Constantes;

abrirURL() async {
  const url = Constantes.URL_SITE;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível aceder a: $url';
  }
}

abrirLocalizacao() async {
  const urlGoogleMaps = Constantes.URL_MAPSANDROID;
  const urlAppleMaps = Constantes.URL_MAPSIOS;

  if (await canLaunch(urlGoogleMaps)) {
      await launch(urlGoogleMaps);
    }
    if (await canLaunch(urlAppleMaps)) {
      await launch(urlAppleMaps, forceSafariVC: false);
    } else {
      throw "Não foi possível aceder à localização";
    }
}

encomendarTelefone() async {
  const url = Constantes.URL_TELEFONE;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível aceder ao telefone';
  }
}

encomendarEmail() async {
  const url = Constantes.URL_EMAIL;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível aceder ao email';
  }
}

encomendarSMS() async {
  const url = Constantes.URL_SMS;
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Não foi possível aceder ao email';
  }
}