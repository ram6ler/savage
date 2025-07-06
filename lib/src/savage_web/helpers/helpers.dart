import "package:web/web.dart" as web;

const namespace = 'http://www.w3.org/2000/svg';

String getAttribute(web.SVGElement svg, String attribute) =>
    svg.getAttributeNS(null, attribute)!;

void setAttribute(web.SVGElement svg, String attribute, String value) =>
    svg.setAttributeNS(
      null,
      attribute,
      value,
    );
