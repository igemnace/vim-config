Vim�UnDo� ����q��a���r�U���ZgNO.q!�%�   �   >    material: React.PropTypes.arrayOf(React.PropTypes.object),            3       3   3   3    X!i    _�                    \        ����                                                                                                                                                                                                                                                                                                                            \          g          v       X�s    �   d   f                    <TagList�   a   c                    <TagList�   ^   `                    <TagList�   [   ]                    <TagList5�_�                            ����                                                                                                                                                                                                                                                                                                                            \          g          v       X�w     �                Mimport TagList from '../../list-view-page/tags-list/tags-list.component.jsx';5�_�                            ����                                                                                                                                                                                                                                                                                                                            [          f          v       X�y     �         n       �         m    5�_�                       6    ����                                                                                                                                                                                                                                                                                                                            \          g          v       XɃ    �         n      6import TagsSetting from './tags-setting.component.jsx'5�_�                    ]        ����                                                                                                                                                                                                                                                                                                                            \           h           v        Xɥ     �   e   g          !            title='Collaborators'�   b   d          %            title='Exemption Filters'�   _   a                       title='View Filters'�   \   ^                      title='Tags'5�_�                    ^        ����                                                                                                                                                                                                                                                                                                                            \          h          v       Xɷ    �   f   h          7            tags={this.props.material.collaborators} />�   c   e          :            tags={this.props.material.exemptionFilters} />�   `   b          5            tags={this.props.material.viewFilters} />�   ]   _          .            tags={this.props.material.tags} />5�_�      	              f       ����                                                                                                                                                                                                                                                                                                                            \          h          v       X��    �   e   g   n      '            description='Collaborators'5�_�      
           	   g   )    ����                                                                                                                                                                                                                                                                                                                            \          h          v       X�    �   f   h   n      :            setting={this.props.material.collaborators} />5�_�   	              
   ]       ����                                                                                                                                                                                                                                                                                                                            \          h          v       X�Q     �   ]   b   o                  �   ]   _   n    5�_�   
                 a        ����                                                                                                                                                                                                                                                                                                                            \          l          v       X˒     �   `   a           5�_�                    `       ����                                                                                                                                                                                                                                                                                                                            \          k          v       X˓     �   _   `          *            search={this.props.searchTags}5�_�                    _       ����                                                                                                                                                                                                                                                                                                                            \          j          v       X˔     �   ^   _          0            addAction={this.props.addTagsAction}5�_�                    ^       ����                                                                                                                                                                                                                                                                                                                            \          i          v       X˘    �   ]   _   o                  edit={true}5�_�                    b       ����                                                                                                                                                                                                                                                                                                                            \          i          v       X˞     �   a   c   o    �   b   c   o    5�_�                    f       ����                                                                                                                                                                                                                                                                                                                            \          j          v       X˟     �   e   g   p    �   f   g   p    5�_�                   j       ����                                                                                                                                                                                                                                                                                                                            \          k          v       X˧     �   ]   _   q                  edit={false}5�_�                    ^       ����                                                                                                                                                                                                                                                                                                                            \          k          v       X˯    �   ]   _   q                  edit={true}5�_�                   j       ����                                                                                                                                                                                                                                                                                                                            \          k          v       X˽   	 �   i   k   r                  �   i   k   q    5�_�                    Q       ����                                                                                                                                                                                                                                                                                                                            \          l          v       X�r     �   Q   T   s        �   Q   S   r    5�_�                    S   E    ����                                                                                                                                                                                                                                                                                                                            ^          n          v       X̀   
 �   R   T   t      E  curriedChange = field => value => this.props.onChange(field, value)5�_�                    `       ����                                                                                                                                                                                                                                                                                                                            ^          n          v       X͇    �   `   b   u                  �   `   b   t    5�_�                    f   -    ����                                                                                                                                                                                                                                                                                                                            ^          o          v       X͜     �   e   g   u    �   f   g   u    5�_�                    k       ����                                                                                                                                                                                                                                                                                                                            ^          p          v       X͝     �   j   l   v    �   k   l   v    5�_�                    p       ����                                                                                                                                                                                                                                                                                                                            ^          q          v       X͟     �   o   q   w    �   p   q   w    5�_�                    f        ����                                                                                                                                                                                                                                                                                                                            ^          r          v       Xͨ     �   e   g          1            onChange={this.curriedChange('tags')}5�_�                    k        ����                                                                                                                                                                                                                                                                                                                            ^          r          v       Xͯ     �   j   l          1            onChange={this.curriedChange('tags')}5�_�                    p        ����                                                                                                                                                                                                                                                                                                                            ^          r          v       Xͷ    �   o   q          1            onChange={this.curriedChange('tags')}5�_�      !               `        ����                                                                                                                                                                                                                                                                                                                            ^          p          v       X��    �   n   p                      edit={false}�   i   k                      edit={false}�   d   f                      edit={false}�   _   a                      edit={false}5�_�       "           !   `       ����                                                                                                                                                                                                                                                                                                                            ^          p          v       X��     �   `   d   y                  �   `   b   x    5�_�   !   #           "   h       ����                                                                                                                                                                                                                                                                                                                            ^          s          v       X�-     �   h   l   |                  �   h   j   {    5�_�   "   $           #   p       ����                                                                                                                                                                                                                                                                                                                            ^          v          v       X�2     �   p   t                     �   p   r   ~    5�_�   #   %           $   x       ����                                                                                                                                                                                                                                                                                                                            ^          y          v       X�5     �   x   |   �                  �   x   z   �    5�_�   $   &           %   i        ����                                                                                                                                                                                                                                                                                                                            i   $       l   $       v   $    X�J     �   j   l          *            source={this.props.sourceTags}�   i   k          *            search={this.props.searchTags}�   h   j          /            addAction={this.props.addTagAction}5�_�   %   '           &   q        ����                                                                                                                                                                                                                                                                                                                            q          u          v       X�U     �   r   t          *            source={this.props.sourceTags}�   q   s          *            search={this.props.searchTags}�   p   r          /            addAction={this.props.addTagAction}5�_�   &   (           '   y       ����                                                                                                                                                                                                                                                                                                                            q          u          v       X�[    �   x   y          /            addAction={this.props.addTagAction}5�_�   '   )           (   y        ����                                                                                                                                                                                                                                                                                                                            y          {          v       X��    �   y   {          *            source={this.props.sourceTags}�   x   z          *            search={this.props.searchTags}5�_�   (   ,           )   e   -    ����                                                                                                                                                                                                                                                                                                                                                             X��     �   d   f   �      1            setting={this.props.material.tags} />5�_�   )   .   +       ,   m   4    ����                                                                                                                                                                                                                                                                                                                            e   .       e   2       v   2    X�     �   l   n   �      8            setting={this.props.material.viewFilters} />5�_�   ,   0   -       .   m   5    ����                                                                                                                                                                                                                                                                                                                            e   .       e   2       v   2    X�$     �   l   n   �      9            setting={this.props.material.viewFilters } />�   m   n   �    5�_�   .   1   /       0   u   9    ����                                                                                                                                                                                                                                                                                                                            m   4       m   9       v   9    X�:     �   t   v   �      =            setting={this.props.material.exemptionFilters} />�   u   v   �    5�_�   0   2           1   |   /    ����                                                                                                                                                                                                                                                                                                                            m   4       m   9       v   9    X�@    �   {   }   �      3            setting={this.props.material.admins} />�   |   }   �    5�_�   1   3           2          ����                                                                                                                                                                                                                                                                                                                                                             X!i     �         �      >    material: React.PropTypes.arrayOf(React.PropTypes.object),5�_�   2               3          ����                                                                                                                                                                                                                                                                                                                                                             X!i
    �         �      '    material: (React.PropTypes.object),�         �    5�_�   .           0   /   r   5    ����                                                                                                                                                                                                                                                                                                                            m   4       m   9       v   9    X�3     �   r   s   �    �   q   s   �      <            search={this.props.searchExemptionFilters || []}5�_�   ,           .   -   m   4    ����                                                                                                                                                                                                                                                                                                                            e   .       e   2       v   2    X�      �   m   n   �    �   l   n   �      >            setting={this.props.material.viewFilters|| [] } />5�_�   )       *   ,   +   m   4    ����                                                                                                                                                                                                                                                                                                                            e   .       e   2       v   2    X�     �   m   n   �    �   l   n   �      =            setting={this.props.material.viewFilters|| []} />5�_�   )           +   *   m   3    ����                                                                                                                                                                                                                                                                                                                            e   .       e   2       v   2    X�     �   m   n   �    �   l   n   �      =            setting={this.props.material.viewFilter|| []s} />5�_�                    p       ����                                                                                                                                                                                                                                                                                                                            ^          q          v       XͰ     �   o   r   x      Y            onChange={this.curriedChange('tags')} setting={this.props.material.admins} />5�_�                    j       ����                                                                                                                                                                                                                                                                                                                            \          k          v       X˶     �   j   k   q    �   i   k   q      7            setting={ttruehis.props.material.admins} />5�_�                    j       ����                                                                                                                                                                                                                                                                                                                            \          j   8       v       Xˡ     �   i   l   q      :            setting={this.props.material.admins} /> </div>5�_�                     \       ����                                                                                                                                                                                                                                                                                                                                                             X�d     �   \   ]   n       5��