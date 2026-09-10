.class public Lorg/apache/poi/ss/format/CellFormatResult;
.super Ljava/lang/Object;
.source "CellFormatResult.java"


# instance fields
.field public final applies:Z

.field public final text:Ljava/lang/String;

.field public final textColor:Ljava/awt/Color;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/awt/Color;)V
    .locals 0
    .param p1, "applies"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textColor"    # Ljava/awt/Color;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellFormatResult;->applies:Z

    .line 55
    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    .line 56
    if-eqz p1, :cond_0

    .end local p3    # "textColor":Ljava/awt/Color;
    :goto_0
    iput-object p3, p0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    .line 57
    return-void

    .line 56
    .restart local p3    # "textColor":Ljava/awt/Color;
    :cond_0
    const/4 p3, 0x0

    goto :goto_0
.end method
