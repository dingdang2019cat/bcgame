// ˢ��
function refresh() {
	$("#datagrid_tb").bootstrapTable('refresh');
}

/**
 * ��ʾ��
 * param �ı���Ϣ
 * index ����
 */
function aler(param,index){
	switch (index) {
	case 1://��ͨ��ʾ��
		layer.alert(param, {
			  icon: 0,
			  skin: 'layer-ext-moon'
			});
		break;
	case 2://״̬������ʾ��
		layer.alert('��'+param+'���ѱ�����!', {
			  icon: 6,
			  skin: 'layer-ext-moon'
			})
		break;
	case 3://״̬�ر���ʾ��
		layer.alert('��'+param+'���ѱ�����!', {
			icon: 5,
			skin: 'layer-ext-moon'
		})
		break;
	case 4://�ɹ���ʾ��
		layer.alert(param,{
			icon: 1,
			skin: 'layer-ext-moon'
		})
		break;
	default:
		layer.alert(param, {
			icon: 2,
			skin: 'layer-ext-moon'
		})
		break;
	}
}


//��ʽ����������
function articleType(value){
	switch(value){
	case 1:
		return '��������';
		break;
	case 2:
		return 'ȡ�����';
		break;
	case 3:
		return '������';
		break;
	case 4:
		return '���˷���';
		break;
	case 5:
		return '����Э��';
		break;
	case 6:
		return '��ϵ����';
		break;
	case 7:
		return '��������';
		break;
	case 8:
		return '�淨����';
		break;
	case 9:
		return '��Ʊ����';
		break;
	case 10:
		return '��Ѷ����';
		break;
	case 11:
		return '��������';
		break;
	case 12:
		return '���ӹ���';
		break;
	}
}

//���ˢ�²����ص�һҳ
function initAndRefresh(){
	$("#datagrid_tb").bootstrapTable('refreshOptions',{pageNumber:1});
}

//��ʽ������ʱ��
function dateFormatterDateTime(value, row, index) {
	return DateUtil.formatDatetime(value);
}

//��ʽ������
function dateFormatterDate(value, row, index) {
	return DateUtil.formatDate(value);
}

	function cz(obj){
			var lotName = '';
			switch(obj){
			case 'CQSSC':
				lotName = "����ʱʱ��";
				break;
			case 'PL3':
				lotName = "������";
				break;
			case 'SH11X5':
				lotName = "�Ϻ�11ѡ5";
				break;
			case 'FC3D':
				lotName = "����3D";
				break;
			case 'BJSC':
				lotName = "��������";
				break;
			case 'EFC':
				lotName = "���ֲ�";
				break;
			case 'WFC':
				lotName = "��ֲ�";
				break;
			case 'XJSSC':
				lotName = "�½�ʱʱ��";
				break;
			case 'PCEGG':
				lotName = "PC����";
				break;
			case 'JX11X5':
				lotName = "����11ѡ5";
				break;
			case 'GD11X5':
				lotName = "�㶫11ѡ5";
				break;
			case 'SD11X5':
				lotName = "ɽ��11ѡ5";
				break;
			case 'TJSSC':
				lotName = "���ʱʱ��";
				break;
			case 'FFC':
				lotName = "�ֲַ�";
				break;
			
			}
			return lotName;
		}

//״̬
function statusFormatter(value, row, index) {
	if (value === 2) {
		return '<span class="text-success">����</span><a href="#"><span class="text-danger stateClose">(����)</span></a>';
	}
	return '<span class="text-danger">����</span><a href="#"><span class="text-success stateOpen">(����)</span></a>';
}
/**
 * 
 */