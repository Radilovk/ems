.class public Lorg/apache/poi/ss/format/CellFormatResult;
.super Ljava/lang/Object;
.source "CellFormatResult.java"


# instance fields
.field public final applies:Z

.field public final text:Ljava/lang/String;

.field public final textColor:Ljava/awt/Color;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/awt/Color;)V
    .locals 1
    .param p1, "applies"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textColor"    # Ljava/awt/Color;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lorg/apache/poi/ss/format/CellFormatResult;->applies:Z

    .line 55
    iput-object p2, p0, Lorg/apache/poi/ss/format/CellFormatResult;->text:Ljava/lang/String;

    .line 56
    if-eqz p1, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/poi/ss/format/CellFormatResult;->textColor:Ljava/awt/Color;

    .line 57
    return-void
.end method
