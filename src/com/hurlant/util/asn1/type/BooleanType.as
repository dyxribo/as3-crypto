package com.hurlant.util.asn1.type {
	import flash.net.registerClassAlias;
	import flash.utils.ByteArray;
	
	public class BooleanType extends ASN1Type {
		registerClassAlias("com.hurlant.util.asn1.BooleanType", BooleanType);
		public function BooleanType() {
			super(ASN1Type.BOOLEAN);
		}
		
		/**
		 * 
		 * @param s
		 * @param length
		 * @return Boolean
		 * 
		 */
		protected override function fromDERContent(s:ByteArray, length:int):* {
			if (length != 1)
				throw new Error("DER encoded booleans must have length 1");
			return s.readByte() != 0;
		}
	}
}