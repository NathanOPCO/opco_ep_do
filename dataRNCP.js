async function getData(){
    const response = await fetch("https://static.data.gouv.fr/resources/repertoire-national-des-certifications-professionnelles-et-repertoire-specifique/20230327-162513/rncp-rs-france-competence-v3.2.xsd");
    const data = await response.text();
    const parser = new DOMParser();
    const xml = parser.parseFromString(data, "text/html");

    console.log(xml);
}
function xmlToObj(xml){
    const products = [...xml/querySelectorAll]
}
getData();