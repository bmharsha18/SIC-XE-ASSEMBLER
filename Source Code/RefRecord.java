package assembler;

public class RefRecord implements Record {
    private final String _Refname1;
    private final String _Refname2;
    
    public RefRecord(String name1,String name2) {
        _Refname1 = name1;
        _Refname2 = name2;
    }
    public RefRecord(String name) {
        _Refname1 = name;
        _Refname2 = null;
    }
    
    
    @Override
    public String toObjectProgram() {
        if(_Refname2!=null){
            return String.format("R^%s^%s", _Refname1,_Refname2);
        }
        else
            return String.format("R^%s", _Refname1);
    }
    
}
