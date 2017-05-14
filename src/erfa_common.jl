
const ERFA_DPI = 3.141592653589793238462643
const ERFA_D2PI = 6.283185307179586476925287
const ERFA_DR2D = 57.29577951308232087679815
const ERFA_DD2R = 1.745329251994329576923691e-2
const ERFA_DR2AS = 206264.8062470963551564734
const ERFA_DAS2R = 4.848136811095359935899141e-6
const ERFA_DS2R = 7.272205216643039903848712e-5
const ERFA_TURNAS = 1296000.0
const ERFA_DMAS2R = ERFA_DAS2R / 1e3
const ERFA_DTY = 365.242198781
const ERFA_DAYSEC = 86400.0
const ERFA_DJY = 365.25
const ERFA_DJC = 36525.0
const ERFA_DJM = 365250.0
const ERFA_DJ00 = 2451545.0
const ERFA_DJM0 = 2400000.5
const ERFA_DJM00 = 51544.5
const ERFA_DJM77 = 43144.0
const ERFA_TTMTAI = 32.184
const ERFA_DAU = 149597870.7e3
const ERFA_CMPS = 299792458.0
const ERFA_AULT = ERFA_DAU/ERFA_CMPS
const ERFA_DC = ERFA_DAYSEC / ERFA_AULT
const ERFA_ELG = 6.969290134e-10
const ERFA_ELB = 1.550519768e-8
const ERFA_TDB0 = -6.55e-5
const ERFA_SRS = 1.97412574336e-8

# Skipping MacroDefinition: ERFA_DINT ( A ) ( ( A ) < 0.0 ? ceil ( A ) : floor ( A ) )
# Skipping MacroDefinition: ERFA_DNINT ( A ) ( ( A ) < 0.0 ? ceil ( ( A ) - 0.5 ) : floor ( ( A ) + 0.5 ) )
# Skipping MacroDefinition: ERFA_DSIGN ( A , B ) ( ( B ) < 0.0 ? - fabs ( A ) : fabs ( A ) )
# Skipping MacroDefinition: ERFA_GMAX ( A , B ) ( ( ( A ) > ( B ) ) ? ( A ) : ( B ) )
# Skipping MacroDefinition: ERFA_GMIN ( A , B ) ( ( ( A ) < ( B ) ) ? ( A ) : ( B ) )

const ERFA_WGS84 = 1
const ERFA_GRS80 = 2
const ERFA_WGS72 = 3

immutable Array_3_Cdouble
    d1::Cdouble
    d2::Cdouble
    d3::Cdouble
end

zero(::Type{Array_3_Cdouble}) = Array_3_Cdouble(fill(zero(Cdouble),3)...)

immutable Array_3_Array_3_Cdouble
    d1::Array_3_Cdouble
    d2::Array_3_Cdouble
    d3::Array_3_Cdouble
end

zero(::Type{Array_3_Array_3_Cdouble}) = Array_3_Array_3_Cdouble(fill(zero(Array_3_Cdouble),3)...)

type eraASTROM
    pmt::Cdouble
    eb::Array_3_Cdouble
    eh::Array_3_Cdouble
    em::Cdouble
    v::Array_3_Cdouble
    bm1::Cdouble
    bpn::Array_3_Array_3_Cdouble
    along::Cdouble
    phi::Cdouble
    xpl::Cdouble
    ypl::Cdouble
    sphi::Cdouble
    cphi::Cdouble
    diurab::Cdouble
    eral::Cdouble
    refa::Cdouble
    refb::Cdouble
end

immutable Array_2_Array_3_Cdouble
    d1::Array_3_Cdouble
    d2::Array_3_Cdouble
end

zero(::Type{Array_2_Array_3_Cdouble}) = Array_2_Array_3_Cdouble(fill(zero(Array_3_Cdouble),2)...)

immutable eraLDBODY
    bm::Cdouble
    dl::Cdouble
    pv::Array_2_Array_3_Cdouble
end

immutable Array_4_Cint
    d1::Cint
    d2::Cint
    d3::Cint
    d4::Cint
end

zero(::Type{Array_4_Cint}) = Array_4_Cint(fill(zero(Cint),4)...)

immutable Array_2_Cdouble
    d1::Cdouble
    d2::Cdouble
end

zero(::Type{Array_2_Cdouble}) = Array_2_Cdouble(fill(zero(Cdouble),2)...)
