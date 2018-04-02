/**
 * 
 */
GlobalTypeUtil = {
	datas : {
		// tablekey��resources/tablekey.txt������
		1 : {
			// columnkey��resources/columnkey.txt������
			1 : {
				1 : "�˹��ӿ�",
				2 : "�˹��ۿ�",
				3 : "����ȡ��ʧ��",
				4 : "����ȡ��",
				5 : "����֧��",
				6 : "�������",
				7 : "һ�����",
				8 : "����Ͷע",
				9 : "��������ˮ��Ǯ",
				10 : "��������ˮ��Ǯ",
				11 : "�����������Ǯ",
				12 : "�����������Ǯ",
				13 : "�༶�������Ǯ",
				14 : "һ�༶�������Ǯ",
				15 : "�������ת��ϵͳ���",
				16 : "ϵͳ���ת���������",
				130 : "��ƱͶע"
			},
			2 : {
				1 : "������",
				2 : "��ֵ�ɹ�",
				3 : "��ֵʧ��",
				4 : "��ȡ��"
			},
			3 : {
				1 : "������",
				2 : "���ɹ�",
				3 : "���ʧ��",
				4 : "��ȡ��"
			}
		},
		2 : {
			1 : {
				1 : "����",
				2 : "����"
			},
			2 : {
				1 : "��Ա",
				2 : "����"

			}
		},
		3 : {
			1 : {
				1 : "����",
				2 : "����"
			}
		},
		4 : {
			1 : {
				1 : "δ����",
				2 : "�ѷ���"
			},
			2 : {
				1 : "�ƹ�",
				2 : "ά��"
			}
		},
		5 : {
			1 : {
				1 : "δ��",
				2 : "�Ѷ�"
			}
		},
		6 : {
			1 : {
				1 : "����",
				2 : "����",
				3 : "����"
			}
		},
		7 : {
			1 : {
				1 : "����",
				2 : "����"
			},
			2 : {
				1 : "��Ա",
				2 : "����"
			},
			3 : {
				1 : "�ı�",
				2 : "������",
				3 : "��ѡ",
				4 : "��ѡ",
				5 : "�ı���",
				6 : "�����"
			},
			4 : {
				1 : "����",
				2 : "�ɼ�"
			}
		},
		8 : {
			1 : {
				"text" : "�ı�",
				"date" : "����",
				"datetime" : "����ʱ��",
				"checklist" : "��ѡ",
				"select" : "����ѡ��",
				"combodate" : "����ʱ��",
				"textarea" : "�ı���"
			}
		}
	},
	getTypeName : function(tableKey, colKey, key) {
		if (!key) {
			return "";
		}
		return GlobalTypeUtil.datas[tableKey][colKey][key];
	},
	getCombo : function(tableKey, colKey) {
		if (!colKey) {
			return {};
		}
		var data = GlobalTypeUtil.datas[tableKey][colKey];
		var res = [];
		var son = {};
		for ( var key in data) {
			son = {};
			son.id = key;
			son.name = data[key];
			res.push(son);
		}
		return res;
	}

}