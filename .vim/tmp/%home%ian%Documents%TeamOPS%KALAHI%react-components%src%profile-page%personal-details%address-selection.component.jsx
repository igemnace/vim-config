Vim�UnDo� ��Ys��F�%{͑"�r�Û��86���K�   L   -          {sourceItems.map(({key, name}) => (   @                          XC    _�                             ����                                                                                                                                                                                                                                                                                                                                                             X/    �                   �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             X/V    �         R      %import styles from './selection.scss'5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             X/_    �   	      R      8export default class Selection extends React.Component {5�_�                    8        ����                                                                                                                                                                                                                                                                                                                            8   
       A   
       v   
    X=d     �   @   B                  </div>�   7   9          +        <div className={styles.checkboxes}>5�_�                            ����                                                                                                                                                                                                                                                                                                                            8   
       A   
       v   
    X=l    �         S       �         R    5�_�                    C        ����                                                                                                                                                                                                                                                                                                                            9   
       B   
       v   
    X=�    �   B   C                  { !addFunction               ? ''               :<div>                 <TextField   )                value={this.state.addTag}   )                onChange={this.changeTag}   ,                className={styles.textField}   $                hintText='Add a Tag'                 />   _              <FlatButton label='Add' primary onClick={e => addFunction(this.state.addTag) } />               </div>   	        }5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            9   
       B   
       v   
    X=�     �   8   ;   G      8        <RadioButtonGroup className={styles.checkboxes}>5�_�      	              :   '    ����                                                                                                                                                                                                                                                                                                                            9   
       C   
       v   
    X=�     �   9   <   H      (          className={styles.checkboxes}>5�_�      
           	   :       ����                                                                                                                                                                                                                                                                                                                            9   
       D   
       v   
    X=�     �   ;   =   K      
          �   ;   =   J    �   :   <   J      
          �   :   <   I    5�_�   	              
   <        ����                                                                                                                                                                                                                                                                                                                            9   
       F   
       v   
    X=�     �   ;   =          +          defaultSelected={currentSelected}5�_�   
                 <   
    ����                                                                                                                                                                                                                                                                                                                            9   
       F   
       v   
    X=�     �   <   >   L      
          �   <   >   K    5�_�                    @       ����                                                                                                                                                                                                                                                                                                                            9   
       G   
       v   
    X>      �   ?   A   L                  <Checkbox5�_�                            ����                                                                                                                                                                                                                                                                                                                            9   
       G   
       v   
    X>&    �         M       �         L    5�_�                            ����                                                                                                                                                                                                                                                                                                                            :   
       H   
       v   
    X>;     �                ;import RadioButtonGroup from 'material-ui/RadioButtonGroup'5�_�                            ����                                                                                                                                                                                                                                                                                                                            9   
       G   
       v   
    X><     �                1import RadioButton from 'material-ui/RadioButton'5�_�                            ����                                                                                                                                                                                                                                                                                                                            8   
       F   
       v   
    X>>    �         L       �         K    5�_�                    B        ����                                                                                                                                                                                                                                                                                                                            9   
       G   
       v   
    X>\     �   A   C   L    �   B   C   L    5�_�                    B       ����                                                                                                                                                                                                                                                                                                                            9   
       H   
       v   
    X>]    �   A   C   M      !              label={key || name}5�_�                    D       ����                                                                                                                                                                                                                                                                                                                            9   
       H   
       v   
    X>w     �   C   D          5              checked={this.inSelected(key || name) }5�_�                    D       ����                                                                                                                                                                                                                                                                                                                            9   
       G   
       v   
    X>y     �   C   D          M              onCheck={(e, t) => { onSelectedItemsChanged(key || name, t) } }5�_�                    D        ����                                                                                                                                                                                                                                                                                                                            9   
       F   
       v   
    X>}   	 �   C   E                        />5�_�                    0        ����                                                                                                                                                                                                                                                                                                                            9   
       F   
       v   
    X>�   
 �   /   1   K      T    const { title, sourceItems, selectedItems, onSelectedItemsChanged } = this.props5�_�                    2        ����                                                                                                                                                                                                                                                                                                                            9   
       F   
       v   
    XB�    �   1   3   L          �   1   3   K    5�_�                    @       ����                                                                                                                                                                                                                                                                                                                            :   
       G   
       v   
    XB�     �   ?   A   L      -          {sourceItems.map(({key, name}) => (�   @   A   L    5�_�                    @       ����                                                                                                                                                                                                                                                                                                                            :   
       G   
       v   
    XB�     �   ?   A   L      +          {sourceItems.map((key, name) => (5�_�                     B        ����                                                                                                                                                                                                                                                                                                                            B          D          V       XC    �   C   E          !              label={key || name}�   B   D          !              value={key || name}�   A   C                        key={key || name}5��