.class public final Lorg/apache/poi/ss/formula/ptg/RefNPtg;
.super Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;
.source "RefNPtg.java"


# static fields
.field public static final sid:B = 0x2ct


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getSid()B
    .locals 1

    .line 34
    const/16 v0, 0x2c

    return v0
.end method

.method public bridge synthetic write(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/poi/util/LittleEndianOutput;

    .line 26
    invoke-super {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Ref2DPtgBase;->write(Lorg/apache/poi/util/LittleEndianOutput;)V

    return-void
.end method
