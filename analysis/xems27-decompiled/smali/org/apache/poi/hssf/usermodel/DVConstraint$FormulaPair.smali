.class public final Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;
.super Ljava/lang/Object;
.source "DVConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/DVConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormulaPair"
.end annotation


# instance fields
.field private final _formula1:[Lorg/apache/poi/ss/formula/ptg/Ptg;

.field private final _formula2:[Lorg/apache/poi/ss/formula/ptg/Ptg;


# direct methods
.method public constructor <init>([Lorg/apache/poi/ss/formula/ptg/Ptg;[Lorg/apache/poi/ss/formula/ptg/Ptg;)V
    .locals 0
    .param p1, "formula1"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;
    .param p2, "formula2"    # [Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->_formula1:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 47
    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->_formula2:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    .line 48
    return-void
.end method


# virtual methods
.method public getFormula1()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->_formula1:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method

.method public getFormula2()[Lorg/apache/poi/ss/formula/ptg/Ptg;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/poi/hssf/usermodel/DVConstraint$FormulaPair;->_formula2:[Lorg/apache/poi/ss/formula/ptg/Ptg;

    return-object v0
.end method
