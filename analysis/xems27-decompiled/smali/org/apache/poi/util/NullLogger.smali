.class public Lorg/apache/poi/util/NullLogger;
.super Lorg/apache/poi/util/POILogger;
.source "NullLogger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/apache/poi/util/POILogger;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0
    .param p1, "cat"    # Ljava/lang/String;

    .line 36
    return-void
.end method

.method public log(ILjava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;

    .line 126
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "obj7"    # Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "obj7"    # Ljava/lang/Object;
    .param p9, "obj8"    # Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "obj7"    # Ljava/lang/Object;
    .param p9, "obj8"    # Ljava/lang/Object;
    .param p10, "exception"    # Ljava/lang/Throwable;

    .line 344
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "obj7"    # Ljava/lang/Object;
    .param p9, "exception"    # Ljava/lang/Throwable;

    .line 320
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "obj6"    # Ljava/lang/Object;
    .param p8, "exception"    # Ljava/lang/Throwable;

    .line 297
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "obj5"    # Ljava/lang/Object;
    .param p7, "exception"    # Ljava/lang/Throwable;

    .line 276
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "obj4"    # Ljava/lang/Object;
    .param p6, "exception"    # Ljava/lang/Throwable;

    .line 256
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "obj3"    # Ljava/lang/Object;
    .param p5, "exception"    # Ljava/lang/Throwable;

    .line 237
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "obj2"    # Ljava/lang/Object;
    .param p4, "exception"    # Ljava/lang/Throwable;

    .line 220
    return-void
.end method

.method public log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "obj1"    # Ljava/lang/Object;
    .param p3, "exception"    # Ljava/lang/Throwable;

    .line 204
    return-void
.end method

.method public logFormatted(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj1"    # Ljava/lang/Object;

    .line 376
    return-void
.end method

.method public logFormatted(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj1"    # Ljava/lang/Object;
    .param p4, "obj2"    # Ljava/lang/Object;

    .line 409
    return-void
.end method

.method public logFormatted(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj1"    # Ljava/lang/Object;
    .param p4, "obj2"    # Ljava/lang/Object;
    .param p5, "obj3"    # Ljava/lang/Object;

    .line 444
    return-void
.end method

.method public logFormatted(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "obj1"    # Ljava/lang/Object;
    .param p4, "obj2"    # Ljava/lang/Object;
    .param p5, "obj3"    # Ljava/lang/Object;
    .param p6, "obj4"    # Ljava/lang/Object;

    .line 480
    return-void
.end method
