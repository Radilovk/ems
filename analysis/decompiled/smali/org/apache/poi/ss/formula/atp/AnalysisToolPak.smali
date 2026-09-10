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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;>;"
    const-string v1, "ACCRINT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 80
    const-string v1, "ACCRINTM"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 81
    const-string v1, "AMORDEGRC"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 82
    const-string v1, "AMORLINC"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 83
    const-string v1, "AVERAGEIF"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 84
    const-string v1, "AVERAGEIFS"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 85
    const-string v1, "BAHTTEXT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 86
    const-string v1, "BESSELI"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 87
    const-string v1, "BESSELJ"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 88
    const-string v1, "BESSELK"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 89
    const-string v1, "BESSELY"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 90
    const-string v1, "BIN2DEC"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Bin2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 91
    const-string v1, "BIN2HEX"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 92
    const-string v1, "BIN2OCT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 93
    const-string v1, "COMPLEX"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Complex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 94
    const-string v1, "CONVERT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 95
    const-string v1, "COUNTIFS"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 96
    const-string v1, "COUPDAYBS"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 97
    const-string v1, "COUPDAYS"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 98
    const-string v1, "COUPDAYSNC"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 99
    const-string v1, "COUPNCD"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 100
    const-string v1, "COUPNUM"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 101
    const-string v1, "COUPPCD"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 102
    const-string v1, "CUBEKPIMEMBER"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 103
    const-string v1, "CUBEMEMBER"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 104
    const-string v1, "CUBEMEMBERPROPERTY"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 105
    const-string v1, "CUBERANKEDMEMBER"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 106
    const-string v1, "CUBESET"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 107
    const-string v1, "CUBESETCOUNT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 108
    const-string v1, "CUBEVALUE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 109
    const-string v1, "CUMIPMT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 110
    const-string v1, "CUMPRINC"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 111
    const-string v1, "DEC2BIN"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Dec2Bin;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 112
    const-string v1, "DEC2HEX"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Dec2Hex;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 113
    const-string v1, "DEC2OCT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 114
    const-string v1, "DELTA"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Delta;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 115
    const-string v1, "DISC"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 116
    const-string v1, "DOLLARDE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 117
    const-string v1, "DOLLARFR"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 118
    const-string v1, "DURATION"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 119
    const-string v1, "EDATE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/EDate;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 120
    const-string v1, "EFFECT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 121
    const-string v1, "EOMONTH"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/EOMonth;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 122
    const-string v1, "ERF"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 123
    const-string v1, "ERFC"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 124
    const-string v1, "FACTDOUBLE"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/FactDouble;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 125
    const-string v1, "FVSCHEDULE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 126
    const-string v1, "GCD"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 127
    const-string v1, "GESTEP"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 128
    const-string v1, "HEX2BIN"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 129
    const-string v1, "HEX2DEC"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Hex2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 130
    const-string v1, "HEX2OCT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 131
    const-string v1, "IFERROR"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/IfError;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 132
    const-string v1, "IMABS"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 133
    const-string v1, "IMAGINARY"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Imaginary;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 134
    const-string v1, "IMARGUMENT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 135
    const-string v1, "IMCONJUGATE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 136
    const-string v1, "IMCOS"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 137
    const-string v1, "IMDIV"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 138
    const-string v1, "IMEXP"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 139
    const-string v1, "IMLN"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 140
    const-string v1, "IMLOG10"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 141
    const-string v1, "IMLOG2"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 142
    const-string v1, "IMPOWER"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 143
    const-string v1, "IMPRODUCT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 144
    const-string v1, "IMREAL"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/ImReal;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 145
    const-string v1, "IMSIN"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 146
    const-string v1, "IMSQRT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 147
    const-string v1, "IMSUB"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 148
    const-string v1, "IMSUM"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 149
    const-string v1, "INTRATE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 150
    const-string v1, "ISEVEN"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_EVEN:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 151
    const-string v1, "ISODD"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/ParityFunction;->IS_ODD:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 152
    const-string v1, "JIS"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 153
    const-string v1, "LCM"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 154
    const-string v1, "MDURATION"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 155
    const-string v1, "MROUND"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/MRound;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 156
    const-string v1, "MULTINOMIAL"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 157
    const-string v1, "NETWORKDAYS"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/NetworkdaysFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 158
    const-string v1, "NOMINAL"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 159
    const-string v1, "OCT2BIN"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 160
    const-string v1, "OCT2DEC"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Oct2Dec;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 161
    const-string v1, "OCT2HEX"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 162
    const-string v1, "ODDFPRICE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 163
    const-string v1, "ODDFYIELD"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 164
    const-string v1, "ODDLPRICE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 165
    const-string v1, "ODDLYIELD"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 166
    const-string v1, "PRICE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 167
    const-string v1, "PRICEDISC"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 168
    const-string v1, "PRICEMAT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 169
    const-string v1, "QUOTIENT"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Quotient;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 170
    const-string v1, "RANDBETWEEN"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/RandBetween;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 171
    const-string v1, "RECEIVED"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 172
    const-string v1, "RTD"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 173
    const-string v1, "SERIESSUM"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 174
    const-string v1, "SQRTPI"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 175
    const-string v1, "SUMIFS"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/Sumifs;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 176
    const-string v1, "TBILLEQ"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 177
    const-string v1, "TBILLPRICE"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 178
    const-string v1, "TBILLYIELD"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 179
    const-string v1, "WEEKNUM"

    sget-object v2, Lorg/apache/poi/ss/formula/functions/WeekNum;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 180
    const-string v1, "WORKDAY"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/WorkdayFunction;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 181
    const-string v1, "XIRR"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 182
    const-string v1, "XNPV"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 183
    const-string v1, "YEARFRAC"

    sget-object v2, Lorg/apache/poi/ss/formula/atp/YearFrac;->instance:Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    invoke-static {v0, v1, v2}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 184
    const-string v1, "YIELD"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 185
    const-string v1, "YIELDDISC"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 186
    const-string v1, "YIELDMAT"

    invoke-static {v0, v1, v3}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->r(Ljava/util/Map;Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V

    .line 187
    const-string v1, "COUNTIFS"

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
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    sget-object v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    .line 228
    .local v2, "inst":Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 229
    .local v3, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v5, v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 230
    .local v4, "name":Ljava/lang/String;
    iget-object v5, v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 231
    .local v0, "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v0, :cond_0

    instance-of v5, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-eqz v5, :cond_0

    .line 232
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    .end local v0    # "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    return-object v5
.end method

.method public static getSupportedFunctionNames()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    sget-object v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    .line 210
    .local v2, "inst":Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 211
    .local v3, "lst":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v5, v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, "name":Ljava/lang/String;
    iget-object v5, v2, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .line 213
    .local v0, "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v0, :cond_0

    instance-of v5, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-nez v5, :cond_0

    .line 214
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v0    # "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    return-object v5
.end method

.method public static isATPFunction(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
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
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ">;",
            "Ljava/lang/String;",
            "Lorg/apache/poi/ss/formula/functions/FreeRefFunction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 193
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;>;"
    if-nez p2, :cond_0

    new-instance v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    invoke-direct {v0, p1}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    :goto_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-void

    .end local v0    # "func":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    :cond_0
    move-object v0, p2

    .line 193
    goto :goto_0
.end method

.method public static registerFunction(Ljava/lang/String;Lorg/apache/poi/ss/formula/functions/FreeRefFunction;)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "func"    # Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    .prologue
    .line 247
    sget-object v1, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->instance:Lorg/apache/poi/ss/formula/udf/UDFFinder;

    check-cast v1, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;

    .line 248
    .local v1, "inst":Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;
    invoke-static {p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->isATPFunction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    invoke-static {p0}, Lorg/apache/poi/ss/formula/function/FunctionMetadataRegistry;->getFunctionByName(Ljava/lang/String;)Lorg/apache/poi/ss/formula/function/FunctionMetadata;

    move-result-object v2

    .line 250
    .local v2, "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    if-eqz v2, :cond_0

    .line 251
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is a built-in Excel function. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Use FunctoinEval.registerFunction(String name, Function func) instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a function from the Excel Analysis Toolpack."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 257
    .end local v2    # "metaData":Lorg/apache/poi/ss/formula/function/FunctionMetadata;
    :cond_1
    invoke-virtual {v1, p0}, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;

    move-result-object v0

    .line 258
    .local v0, "f":Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    if-eqz v0, :cond_2

    instance-of v3, v0, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak$NotImplemented;

    if-nez v3, :cond_2

    .line 259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POI already implememts "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". You cannot override POI\'s implementations of Excel functions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_2
    iget-object v3, v1, Lorg/apache/poi/ss/formula/atp/AnalysisToolPak;->_functionsByName:Ljava/util/Map;

    invoke-interface {v3, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    return-void
.end method


# virtual methods
.method public findFunction(Ljava/lang/String;)Lorg/apache/poi/ss/formula/functions/FreeRefFunction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
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
