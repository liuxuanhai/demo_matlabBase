%��ȡģ�����ض�Ԫ��
function f=getElement(model,methond)
switch methond
    case 'med'
        f=median(median(model));
    case'min'
        f=min(min(model));
    case'max'
        f=max(max(model));
    otherwise
        print('�޴˷���');
end