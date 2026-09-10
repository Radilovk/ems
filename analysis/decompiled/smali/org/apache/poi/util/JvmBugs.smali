.class public Lorg/apache/poi/util/JvmBugs;
.super Ljava/lang/Object;
.source "JvmBugs.java"


# static fields
.field private static final LOG:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/apache/poi/util/JvmBugs;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/JvmBugs;->LOG:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasLineBreakMeasurerBug()Z
    .locals 7

    .prologue
    .line 44
    const-string v4, "java.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "version":Ljava/lang/String;
    const-string v4, "os.name"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "os":Ljava/lang/String;
    const-string v4, "org.apache.poi.JvmBugs.LineBreakMeasurer.ignore"

    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 47
    .local v1, "ignore":Z
    if-nez v1, :cond_2

    const-string/jumbo v4, "win"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "1.6.0_45"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1.7.0_21"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 48
    .local v0, "hasBug":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    sget-object v4, Lorg/apache/poi/util/JvmBugs;->LOG:Lorg/apache/poi/util/POILogger;

    const/4 v5, 0x5

    const-string v6, "JVM has LineBreakMeasurer bug - see POI bug #54904 - caller code might default to Lucida Sans"

    invoke-virtual {v4, v5, v6}, Lorg/apache/poi/util/POILogger;->log(ILjava/lang/Object;)V

    .line 51
    :cond_1
    return v0

    .line 47
    .end local v0    # "hasBug":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
