.class public final Lorg/apache/poi/ss/formula/functions/Sumx2py2;
.super Lorg/apache/poi/ss/formula/functions/XYNumericFunction;
.source "Sumx2py2.java"


# static fields
.field private static final XSquaredPlusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/poi/ss/formula/functions/Sumx2py2$1;

    invoke-direct {v0}, Lorg/apache/poi/ss/formula/functions/Sumx2py2$1;-><init>()V

    sput-object v0, Lorg/apache/poi/ss/formula/functions/Sumx2py2;->XSquaredPlusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/poi/ss/formula/functions/XYNumericFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAccumulator()Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;
    .locals 1

    .line 41
    sget-object v0, Lorg/apache/poi/ss/formula/functions/Sumx2py2;->XSquaredPlusYSquaredAccumulator:Lorg/apache/poi/ss/formula/functions/XYNumericFunction$Accumulator;

    return-object v0
.end method
