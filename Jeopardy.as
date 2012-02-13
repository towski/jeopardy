package
{
  import flash.display.Sprite;
  import flash.display.Bitmap;
  import mx.controls.TextInput;
  import flash.text.TextField;
  import flash.text.TextFormat;
  import flash.text.StyleSheet;
  import flash.text.TextFieldAutoSize;
  import flash.events.*;
  import flash.utils.*;
  
  import flash.utils.ByteArray;
  
  [SWF(backgroundColor="#0A0C87", frameRate="24", width="800", height="400")]
  public class Jeopardy extends Sprite
  {  
    [Embed(source="FFFHARMO.TTF", fontFamily="Harmony")]
    private var harmony:String;

    private var harmony_format:TextFormat;
    private var text_format:TextFormat;
    private var text:TextField; 
    private var category:TextField; 
    private var hint:TextField; 
    private var inputField:TextField
    private var value:TextField
    private var score:TextField; 
    private var time:TextField; 
    
    private var random:int;
    private var array:Array;
    private var blueBox:Object;
    private var money:int = 0;
    private var currentArray:int = 0;
    private var timeout:int = 20;
    private var style:StyleSheet
    private var anchor:Object
    
    [Embed(source="1",mimeType="application/octet-stream")]
    public var File1:Class;
    [Embed(source="2",mimeType="application/octet-stream")]
    public var File2:Class;
    [Embed(source="3",mimeType="application/octet-stream")]
    public var File3:Class;
    [Embed(source="4",mimeType="application/octet-stream")]
    public var File4:Class;
    [Embed(source="5",mimeType="application/octet-stream")]
    public var File5:Class;
    [Embed(source="6",mimeType="application/octet-stream")]
    public var File6:Class;
    [Embed(source="7",mimeType="application/octet-stream")]
    public var File7:Class;
    [Embed(source="8",mimeType="application/octet-stream")]
    public var File8:Class;
    [Embed(source="9",mimeType="application/octet-stream")]
    public var File9:Class;
    [Embed(source="10",mimeType="application/octet-stream")]
    public var File10:Class;    
    [Embed(source="11",mimeType="application/octet-stream")]
    public var File11:Class;
    [Embed(source="12",mimeType="application/octet-stream")]
    public var File12:Class;
    [Embed(source="13",mimeType="application/octet-stream")]
    public var File13:Class;
    [Embed(source="14",mimeType="application/octet-stream")]
    public var File14:Class;
    [Embed(source="15",mimeType="application/octet-stream")]
    public var File15:Class;
    [Embed(source="16",mimeType="application/octet-stream")]
    public var File16:Class;
    [Embed(source="17",mimeType="application/octet-stream")]
    public var File17:Class;
    //[Embed(source="18",mimeType="application/octet-stream")]
    //public var File18:Class;
    [Embed(source="19",mimeType="application/octet-stream")]
    public var File19:Class;
    [Embed(source="20",mimeType="application/octet-stream")]
    public var File20:Class;
    [Embed(source="21",mimeType="application/octet-stream")]
    public var File21:Class;
    [Embed(source="22",mimeType="application/octet-stream")]
    public var File22:Class;
    [Embed(source="23",mimeType="application/octet-stream")]
    public var File23:Class;
    [Embed(source="24",mimeType="application/octet-stream")]
    public var File24:Class;
    [Embed(source="25",mimeType="application/octet-stream")]
    public var File25:Class;
    [Embed(source="26",mimeType="application/octet-stream")]
    public var File26:Class;
    [Embed(source="27",mimeType="application/octet-stream")]
    public var File27:Class;
    [Embed(source="28",mimeType="application/octet-stream")]
    public var File28:Class;
    [Embed(source="29",mimeType="application/octet-stream")]
    public var File29:Class;
    
    public function Jeopardy(): void{
      var json:JSONFile = new JSONFile();
      array = new Array();
      array.push(new JSONDecoder( new File1().toString(), false ).getValue())
      array.push(new JSONDecoder( new File2().toString(), false ).getValue())
      array.push(new JSONDecoder( new File3().toString(), false ).getValue())
      array.push(new JSONDecoder( new File4().toString(), false ).getValue())
      array.push(new JSONDecoder( new File5().toString(), false ).getValue())
      array.push(new JSONDecoder( new File6().toString(), false ).getValue())
      array.push(new JSONDecoder( new File7().toString(), false ).getValue())
      array.push(new JSONDecoder( new File8().toString(), false ).getValue())
      array.push(new JSONDecoder( new File9().toString(), false ).getValue())      
      array.push(new JSONDecoder( new File10().toString(), false ).getValue())      
      array.push(new JSONDecoder( new File11().toString(), false ).getValue()) 
      array.push(new JSONDecoder( new File12().toString(), false ).getValue())
      array.push(new JSONDecoder( new File13().toString(), false ).getValue())
      array.push(new JSONDecoder( new File14().toString(), false ).getValue())
      array.push(new JSONDecoder( new File15().toString(), false ).getValue())
      array.push(new JSONDecoder( new File16().toString(), false ).getValue())
      array.push(new JSONDecoder( new File17().toString(), false ).getValue())
      //array.push(new JSONDecoder( new File18().toString(), false ).getValue())
      array.push(new JSONDecoder( new File19().toString(), false ).getValue())     
      array.push(new JSONDecoder( new File20().toString(), false ).getValue())      
      array.push(new JSONDecoder( new File21().toString(), false ).getValue()) 
      array.push(new JSONDecoder( new File22().toString(), false ).getValue())
      array.push(new JSONDecoder( new File23().toString(), false ).getValue())
      array.push(new JSONDecoder( new File24().toString(), false ).getValue())
      array.push(new JSONDecoder( new File25().toString(), false ).getValue())
      array.push(new JSONDecoder( new File26().toString(), false ).getValue())
      array.push(new JSONDecoder( new File27().toString(), false ).getValue())
      array.push(new JSONDecoder( new File28().toString(), false ).getValue())
      array.push(new JSONDecoder( new File29().toString(), false ).getValue())     
         
      harmony_format = new TextFormat();
      harmony_format.font = "Harmony";
      harmony_format.size = 20;
      
      category = new TextField();
      category.autoSize = TextFieldAutoSize.LEFT;
      category.defaultTextFormat = harmony_format;
      category.x = 20;
      category.y = 20;
      category.multiline = true
      category.textColor = 0xffffff;
      category.embedFonts = true
      category.alpha = 2.0
      category.width = 200;
      category.height = 150;
      addChild(category);
      
      score = new TextField();
      score.autoSize = TextFieldAutoSize.LEFT;
      score.defaultTextFormat = harmony_format;
      score.x = 350;
      score.y = 350;
      score.multiline = true
      score.textColor = 0xffffff;
      score.embedFonts = true
      score.alpha = 2.0
      score.width = 200;
      score.height = 150;
      addChild(score);
      score.text = "$" + money
      
      time = new TextField();
      time.autoSize = TextFieldAutoSize.LEFT;
      time.defaultTextFormat = harmony_format;
      time.x = 650;
      time.y = 20;
      time.multiline = true
      time.textColor = 0xffffff;
      time.embedFonts = true
      time.alpha = 2.0
      time.width = 200;
      time.height = 150;
      addChild(time);
      time.text = "" + timeout
      
      style = new StyleSheet();
      anchor = new Object();
      anchor.color = "#800080";
      style.setStyle("a", anchor);
      
      harmony_format.size = 18;
      
      value = new TextField();
      //value.autoSize = TextFieldAutoSize.LEFT;
      value.defaultTextFormat = harmony_format;
      value.x = 20;
      value.y = 350;
      value.textColor = 0xffffff;
      value.embedFonts = true
      value.alpha = 2.0
      value.width = 150;
      value.height = 150;
      addChild(value);
      
      inputField = new TextField();
      addChild(inputField);
      inputField.border = false;
      inputField.width = 300;
      inputField.height = 30;
      inputField.x = 20;
      inputField.y = 250;
      inputField.textColor = 0xffffff;
      inputField.multiline = true
      inputField.type = "input";
      stage.focus = inputField;
      inputField.embedFonts = true
      inputField.defaultTextFormat = harmony_format;
      inputField.addEventListener(TextEvent.TEXT_INPUT, changeHandler);
      nextQuestion();
      stage.addEventListener(MouseEvent.CLICK, myClick);
      setInterval(checkTimeout, 1000);
    }
    
    private function checkTimeout():void{
      timeout -= 1;
      time.text = "" + timeout
      if(timeout <= 0){
        nextQuestion()
        timeout = 21;
      }
    }
    
    private function nextQuestion():void{
      currentArray = Math.floor(Math.random() * array.length);
      random = Math.floor(Math.random() * array[currentArray].length);
      blueBox = array[currentArray][random];
      if(blueBox.value != "final" && blueBox.value != undefined){
        newText()
        newHint()

        inputField.text = ""
        if(blueBox.value != null){
          value.htmlText = blueBox.value
        }
        trace(blueBox.question)
        blueBox.answer = blueBox.answer.replace(/\([^\)]*\)/, '')
        var hintText:String = blueBox.answer.replace(/&amp;/g, '&')
        hint.htmlText = hintText.replace(/\w/g, '_')
        inputField.maxChars = blueBox.answer.length + 1 + 3;
        category.htmlText = blueBox.category;
        text.htmlText = blueBox.question.replace(/\([^\)]*\)/, '');
      } else {
        nextQuestion()
      }
    }
    
    private function newText(){
      if(text != null && contains(text)){
        removeChild(text)
      }
      text = new TextField();
      text.defaultTextFormat = harmony_format;
      text.x = 20;
      text.y = 50;
      text.multiline = true
      text.textColor = 0xffffff;
      text.embedFonts = true
      text.alpha = 2.0
      text.width = 600;
      text.height = 220;
      text.wordWrap = true
      text.styleSheet = style;
      addChild(text);
    }
    
    private function newHint(){
      if(hint != null && contains(hint)){
        removeChild(hint)
      }
      hint = new TextField();
      //hint.autoSize = TextFieldAutoSize.LEFT;
      hint.defaultTextFormat = harmony_format;
      hint.x = 20;
      hint.y = 290;
      hint.multiline = true
      hint.textColor = 0xffffff;
      hint.embedFonts = true
      hint.alpha = 2.0
      hint.width = 600;
      hint.height = 150;
      hint.wordWrap = true
      addChild(hint);
    }
    
    public function myClick(eventObject:MouseEvent):void {
      var x:int = Math.floor(eventObject.stageX / 32);
      var y:int = Math.floor(eventObject.stageY / 32);
      stage.focus = inputField;
    }
    
    function trim( s:String ):String{
      return s.replace( /^([\s|\t|\n]+)?(.*)([\s|\t|\n]+)?$/gm, "$2" );
    }

    private function changeHandler(e:TextEvent):void 
    {
      if(e.text == "\n"){
        var match:String = blueBox.answer.match(new RegExp("^" + trim(inputField.text) + "$", "i"));
        if(match != null && match != ""){
          trace(array[currentArray][random].value)
          money += int(array[currentArray][random].value.replace("$",""))
          score.text = "$" + money
        }
        nextQuestion()
        timeout = 21;
      }
    }
  }
}
    
