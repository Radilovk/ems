.class Lorg/apache/poi/hssf/dev/EFBiffViewer$1;
.super Ljava/lang/Object;
.source "EFBiffViewer.java"

# interfaces
.implements Lorg/apache/poi/hssf/eventusermodel/HSSFListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/hssf/dev/EFBiffViewer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/hssf/dev/EFBiffViewer;


# direct methods
.method constructor <init>(Lorg/apache/poi/hssf/dev/EFBiffViewer;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/apache/poi/hssf/dev/EFBiffViewer$1;->this$0:Lorg/apache/poi/hssf/dev/EFBiffViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processRecord(Lorg/apache/poi/hssf/record/Record;)V
    .locals 2
    .param p1, "rec"    # Lorg/apache/poi/hssf/record/Record;

    .line 52
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/apache/poi/hssf/record/Record;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    return-void
.end method
