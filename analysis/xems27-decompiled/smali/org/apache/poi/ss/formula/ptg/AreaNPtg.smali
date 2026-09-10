.class public final Lorg/apache/poi/ss/formula/ptg/AreaNPtg;
.super Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;
.source "AreaNPtg.java"


# static fields
.field public static final sid:S = 0x2ds


# direct methods
.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 0
    .param p1, "in"    # Lorg/apache/poi/util/LittleEndianInput;

    .line 30
    invoke-direct {p0, p1}, Lorg/apache/poi/ss/formula/ptg/Area2DPtgBase;-><init>(Lorg/apache/poi/util/LittleEndianInput;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getSid()B
    .locals 1

    .line 34
    const/16 v0, 0x2d

    return v0
.end method
