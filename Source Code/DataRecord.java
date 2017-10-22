package assembler;

public class DataRecord implements Record {
    private final String _Defname;
    private final int _Address;
    
    public DataRecord(String name , int addr ) {
        _Defname = name;
        _Address = addr;
    }
    
    
    @Override
    public String toObjectProgram() {
        return String.format("D^%s^%2$06X", _Defname, _Address);
        }
    
}
