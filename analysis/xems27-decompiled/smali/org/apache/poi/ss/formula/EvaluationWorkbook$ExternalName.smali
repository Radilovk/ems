.class public Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;
.super Ljava/lang/Object;
.source "EvaluationWorkbook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/EvaluationWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalName"
.end annotation


# instance fields
.field private final _ix:I

.field private final _nameName:Ljava/lang/String;

.field private final _nameNumber:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "nameName"    # Ljava/lang/String;
    .param p2, "nameNumber"    # I
    .param p3, "ix"    # I

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->_nameName:Ljava/lang/String;

    .line 113
    iput p2, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->_nameNumber:I

    .line 114
    iput p3, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->_ix:I

    .line 115
    return-void
.end method


# virtual methods
.method public getIx()I
    .locals 1

    .line 123
    iget v0, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->_ix:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->_nameName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 120
    iget v0, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalName;->_nameNumber:I

    return v0
.end method
