.class public final Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
.super Ljava/lang/Object;
.source "AnalysisToolPak.java"

# interfaces
.implements Lorg/apache/poi/ss/formula/udf/UDFFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;
    }
.end annotation


# static fields
.field public static final instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;


# instance fields
.field private final _functionsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->createFunctionsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    .line 66
    return-void
.end method

.method private createFunctionsMap()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;>;"
    const-string v1, "ACCRINT"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 80
    const-string v1, "ACCRINTM"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 81
    const-string v1, "AMORDEGRC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 82
    const-string v1, "AMORLINC"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 83
    const-string v1, "AVERAGEIF"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 84
    const-string v1, "AVERAGEIFS"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 85
    const-string v1, "BAHTTEXT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 86
    const-string v1, "BESSELI"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 87
    const-string v1, "BESSELJ"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 88
    const-string v1, "BESSELK"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 89
    const-string v1, "BESSELY"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 90
    sget-object v1, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v3, "BIN2DEC"

    invoke-static {v0, v3, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 91
    const-string v1, "BIN2HEX"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 92
    const-string v1, "BIN2OCT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 93
    sget-object v1, Lorg/apache/poi/ss/formula/functions/Complex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v3, "COMPLEX"

    invoke-static {v0, v3, v1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 94
    const-string v1, "CONVERT"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 95
    const-string v1, "COUNTIFS"

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 96
    const-string v3, "COUPDAYBS"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 97
    const-string v3, "COUPDAYS"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 98
    const-string v3, "COUPDAYSNC"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 99
    const-string v3, "COUPNCD"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 100
    const-string v3, "COUPNUM"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 101
    const-string v3, "COUPPCD"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 102
    const-string v3, "CUBEKPIMEMBER"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 103
    const-string v3, "CUBEMEMBER"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 104
    const-string v3, "CUBEMEMBERPROPERTY"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 105
    const-string v3, "CUBERANKEDMEMBER"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 106
    const-string v3, "CUBESET"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 107
    const-string v3, "CUBESETCOUNT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 108
    const-string v3, "CUBEVALUE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 109
    const-string v3, "CUMIPMT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 110
    const-string v3, "CUMPRINC"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 111
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "DEC2BIN"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 112
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "DEC2HEX"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 113
    const-string v3, "DEC2OCT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 114
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Delta;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "DELTA"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 115
    const-string v3, "DISC"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 116
    const-string v3, "DOLLARDE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 117
    const-string v3, "DOLLARFR"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 118
    const-string v3, "DURATION"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 119
    sget-object v3, Lorg/apache/poi/ss/formula/functions/EDate;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "EDATE"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 120
    const-string v3, "EFFECT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 121
    sget-object v3, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "EOMONTH"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 122
    const-string v3, "ERF"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 123
    const-string v3, "ERFC"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 124
    sget-object v3, Lorg/apache/poi/ss/formula/functions/FactDouble;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "FACTDOUBLE"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 125
    const-string v3, "FVSCHEDULE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 126
    const-string v3, "GCD"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 127
    const-string v3, "GESTEP"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 128
    const-string v3, "HEX2BIN"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 129
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Hex2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "HEX2DEC"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 130
    const-string v3, "HEX2OCT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 131
    sget-object v3, Lorg/apache/poi/ss/formula/atp/IfError;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "IFERROR"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 132
    const-string v3, "IMABS"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 133
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Imaginary;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "IMAGINARY"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 134
    const-string v3, "IMARGUMENT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 135
    const-string v3, "IMCONJUGATE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 136
    const-string v3, "IMCOS"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 137
    const-string v3, "IMDIV"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 138
    const-string v3, "IMEXP"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 139
    const-string v3, "IMLN"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 140
    const-string v3, "IMLOG10"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 141
    const-string v3, "IMLOG2"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 142
    const-string v3, "IMPOWER"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 143
    const-string v3, "IMPRODUCT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 144
    sget-object v3, Lorg/apache/poi/ss/formula/functions/ImReal;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "IMREAL"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 145
    const-string v3, "IMSIN"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 146
    const-string v3, "IMSQRT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 147
    const-string v3, "IMSUB"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 148
    const-string v3, "IMSUM"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 149
    const-string v3, "INTRATE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 150
    sget-object v3, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_EVEN:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "ISEVEN"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 151
    sget-object v3, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_ODD:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "ISODD"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 152
    const-string v3, "JIS"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 153
    const-string v3, "LCM"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 154
    const-string v3, "MDURATION"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 155
    sget-object v3, Lorg/apache/poi/ss/formula/atp/MRound;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "MROUND"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 156
    const-string v3, "MULTINOMIAL"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 157
    sget-object v3, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "NETWORKDAYS"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 158
    const-string v3, "NOMINAL"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 159
    const-string v3, "OCT2BIN"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 160
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Oct2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "OCT2DEC"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 161
    const-string v3, "OCT2HEX"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 162
    const-string v3, "ODDFPRICE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 163
    const-string v3, "ODDFYIELD"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 164
    const-string v3, "ODDLPRICE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 165
    const-string v3, "ODDLYIELD"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 166
    const-string v3, "PRICE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 167
    const-string v3, "PRICEDISC"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 168
    const-string v3, "PRICEMAT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 169
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Quotient;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "QUOTIENT"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 170
    sget-object v3, Lorg/apache/poi/ss/formula/atp/RandBetween;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "RANDBETWEEN"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 171
    const-string v3, "RECEIVED"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 172
    const-string v3, "RTD"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 173
    const-string v3, "SERIESSUM"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 174
    const-string v3, "SQRTPI"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 175
    sget-object v3, Lorg/apache/poi/ss/formula/functions/Sumifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "SUMIFS"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 176
    const-string v3, "TBILLEQ"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 177
    const-string v3, "TBILLPRICE"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 178
    const-string v3, "TBILLYIELD"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 179
    sget-object v3, Lorg/apache/poi/ss/formula/functions/WeekNum;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "WEEKNUM"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 180
    sget-object v3, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "WORKDAY"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 181
    const-string v3, "XIRR"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 182
    const-string v3, "XNPV"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 183
    sget-object v3, Lorg/apache/poi/ss/formula/atp/YearFrac;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    const-string v4, "YEARFRAC"

    invoke-static {v0, v4, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 184
    const-string v3, "YIELD"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 185
    const-string v3, "YIELDDISC"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 186
    const-string v3, "YIELDMAT"

    invoke-static {v0, v3, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 187
    sget-object v2, Lorg/apache/poi/ss/formula/functions/Countifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 189
    return-object v0
.end method

.method public static getNotSupportedFunctionNames()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    .line 228
    .local v0, "inst":Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 229
    .local v1, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v2, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 230
    .local v3, "name":Ljava/lang/String;
    iget-object v4, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 231
    .local v4, "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-eqz v5, :cond_0

    .line 232
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    :cond_0
    goto :goto_0

    .line 235
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    .line 210
    .local v0, "inst":Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 211
    .local v1, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v2, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "name":Ljava/lang/String;
    iget-object v4, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 213
    .local v4, "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v4, :cond_0

    instance-of v5, v4, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-nez v5, :cond_0

    .line 214
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    :cond_0
    goto :goto_0

    .line 217
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method

.method public static isATPFunction(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 198
    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    .line 199
    .local v0, "inst":Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
    iget-object v1, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "pFunc"    # Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ")V"
        }
    .end annotation

    .line 193
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;>;"
    if-nez p2, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p2

    .line 194
    .local v0, "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    :goto_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 247
    sget-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    .line 248
    .local v0, "inst":Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->isATPFunction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v1

    .line 250
    .local v1, "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-eqz v1, :cond_0

    .line 251
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is a built-in Excel function. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Use FunctoinEval.registerFunction(String name, Function func) instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a function from the Excel Analysis Toolpack."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v1    # "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_1
    invoke-virtual {v0, p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v1

    .line 258
    .local v1, "f":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v1, :cond_3

    instance-of v2, v1, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 259
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "POI already implememts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". You cannot override POI\'s implementations of Excel functions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 263
    :cond_3
    :goto_0
    iget-object v2, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method


# virtual methods
.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    const-string v0, "_xlfn."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    return-object v0
.end method
