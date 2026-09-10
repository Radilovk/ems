.class public Lorg/apache/commons/lang3/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "object":Ljava/io/Serializable;, "TT;"
    const/4 v5, 0x0

    .line 78
    if-nez p0, :cond_1

    move-object v4, v5

    .line 93
    :cond_0
    :goto_0
    return-object v4

    .line 81
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v3

    .line 82
    .local v3, "objectData":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 84
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v2, v0, v6}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    .local v2, "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    const/4 v6, 0x0

    .line 92
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    .local v4, "readObject":Ljava/io/Serializable;, "TT;"
    if-eqz v2, :cond_0

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_3
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .end local v2    # "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .end local v4    # "readObject":Ljava/io/Serializable;, "TT;"
    :catch_1
    move-exception v1

    .line 96
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lorg/apache/commons/lang3/SerializationException;

    const-string v6, "ClassNotFoundException while reading cloned object data"

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 95
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .restart local v4    # "readObject":Ljava/io/Serializable;, "TT;"
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 97
    .end local v2    # "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    .end local v4    # "readObject":Ljava/io/Serializable;, "TT;"
    :catch_2
    move-exception v1

    .line 98
    .local v1, "ex":Ljava/io/IOException;
    new-instance v5, Lorg/apache/commons/lang3/SerializationException;

    const-string v6, "IOException while reading or closing cloned object data"

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 84
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v2    # "in":Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;
    :catch_3
    move-exception v5

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 95
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_3

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_1
    :try_start_7
    throw v6

    :catch_4
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lorg/apache/commons/lang3/SerializationUtils$ClassLoaderAwareObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 191
    if-eqz p0, :cond_1

    const/4 v3, 0x1

    :goto_0
    const-string v5, "The InputStream must not be null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "in":Ljava/io/ObjectInputStream;
    const/4 v4, 0x0

    .line 194
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 196
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_0

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    :cond_0
    :goto_1
    return-object v2

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    move v3, v4

    .line 191
    goto :goto_0

    .line 196
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v0

    .line 197
    .local v0, "ex":Ljava/lang/Exception;
    :goto_2
    new-instance v3, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 196
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :catch_2
    move-exception v0

    goto :goto_2

    .line 192
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 196
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    if-eqz v4, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_3
    :try_start_7
    throw v3

    :catch_4
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .locals 3
    .param p0, "objectData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 222
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "The byte[] must not be null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 223
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 222
    goto :goto_0
.end method

.method public static roundtrip(Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "msg":Ljava/io/Serializable;, "TT;"
    invoke-static {p0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "obj"    # Ljava/io/Serializable;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    const/4 v3, 0x0

    .line 136
    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    const-string v4, "The OutputStream must not be null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "out":Ljava/io/ObjectOutputStream;
    const/4 v3, 0x0

    .line 138
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    if-eqz v1, :cond_0

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    :cond_0
    :goto_1
    return-void

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    :cond_1
    move v2, v3

    .line 136
    goto :goto_0

    .line 139
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang3/SerializationException;

    invoke-direct {v2, v0}, Lorg/apache/commons/lang3/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 139
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 137
    :catch_2
    move-exception v3

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .locals 2
    .param p0, "obj"    # Ljava/io/Serializable;

    .prologue
    .line 153
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 154
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/lang3/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
