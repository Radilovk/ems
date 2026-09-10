.class public Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;
.super Ljava/lang/Object;
.source "EvaluationWorkbook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/formula/EvaluationWorkbook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalSheet"
.end annotation


# instance fields
.field private final _sheetName:Ljava/lang/String;

.field private final _workbookName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "workbookName"    # Ljava/lang/String;
    .param p2, "sheetName"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->_workbookName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->_sheetName:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public getSheetName()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->_sheetName:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkbookName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/apache/poi/ss/formula/EvaluationWorkbook$ExternalSheet;->_workbookName:Ljava/lang/String;

    return-object v0
.end method
