.class final Lorg/apache/poi/hssf/usermodel/HSSFCellStyle$1;
.super Ljava/lang/ThreadLocal;
.source "HSSFCellStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/usermodel/HSSFCellStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lorg/apache/poi/hssf/usermodel/HSSFCellStyle$1;->initialValue()Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/Short;
    .locals 1

    .line 109
    const/16 v0, -0x8000

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
