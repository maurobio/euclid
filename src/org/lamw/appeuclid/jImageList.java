package org.lamw.appeuclid;
/*https://github.com/jmpessoa/lazandroidmodulewizard*/
/*jControl template*/

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

//-------------------------------------------------------------------------
// jImageList
// Reviewed by TR3E on 10/10/2019
//-------------------------------------------------------------------------

public class jImageList /*extends ...*/ {
  
    private long     pascalObj = 0;      // Pascal Object
    private Controls controls  = null;   // Control Class -> Java/Pascal Interface ...
    private Context  context   = null;
  
    //GUIDELINE: please, preferentially, init all yours params names with "_", ex: int _flag, String _hello ...
  
    public jImageList(Controls _ctrls, long _Self) { //Add more others news "_xxx" params if needed!
       //super(_ctrls.activity);
       context   = _ctrls.activity;
       pascalObj = _Self;
       controls  = _ctrls;
    }
  
    public void jFree() {
      //free local objects...
    }

  //write others [public] methods code here......
  //GUIDELINE: please, preferentially, init all yours params names with "_", ex: int _flag, String _hello ...

  public Bitmap LoadFromFile(String _fullFilename) {
	 //if (bmp != null) { bmp.recycle(); }
	  BitmapFactory.Options bo = new BitmapFactory.Options();		
		
	  if( bo == null ) return null;
	    
	  if( controls.GetDensityAssets() > 0 )
	     bo.inDensity = controls.GetDensityAssets();
	    
	  return BitmapFactory.decodeFile(_fullFilename, bo);
 }

}
