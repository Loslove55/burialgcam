.class final Lezo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Leuu;

.field private final b:Lila;


# direct methods
.method public constructor <init>(Leuu;Lila;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lezo;->a:Leuu;

    iput-object p2, p0, Lezo;->b:Lila;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/io/File;)V
    .locals 9

    invoke-static {}, Loye;->f()Loye;

    move-result-object v7

    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v0, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct {v0}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    const/high16 v1, 0x10000

    invoke-virtual {v8, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v0, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->a(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v0}, Llxz;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Luu;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Lezq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Timestamp parsed from EXIF: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v3}, Lijd;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_3
    sget-object v1, Lezq;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x56

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t extract date information from Exif for "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", falling back to filesystem timestamp"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lijd;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    nop

    nop

    :goto_1
    invoke-static {v0}, Llxo;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)Llxo;

    move-result-object p1

    invoke-static {p1}, Llxo;->a(Llxo;)Lluk;

    move-result-object p1

    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->reset()V

    iget-object v0, p0, Lezo;->a:Leuu;

    invoke-static {p2}, Lilf;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lhqt;->b:Lhqt;

    sget-object v6, Lmpu;->c:Lmpu;

    move-object v5, v7

    invoke-interface/range {v0 .. v6}, Leuu;->a(JLjava/lang/String;Lhqt;Loxo;Lmpu;)Loxo;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v0}, Loxo;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Levi;

    iget-object v0, v0, Levi;->b:Landroid/net/Uri;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lezo;->a:Leuu;

    invoke-interface {v2, v0}, Leuu;->a(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, p0, Lezo;->b:Lila;

    invoke-interface {v0, v8, v1}, Lila;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance v0, Lluo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lluo;-><init>(II)V

    new-instance v1, Lilk;

    sget-object v2, Lmpu;->c:Lmpu;

    invoke-direct {v1, v0, v2}, Lilk;-><init>(Lluo;Lmpu;)V

    invoke-virtual {v1, p2}, Lilk;->a(Ljava/io/File;)V

    invoke-virtual {v1, p1}, Lilk;->a(Lluk;)V

    invoke-virtual {v7, v1}, Loye;->b(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    return-void

    :catchall_0
    move-exception p1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    :try_start_9
    invoke-static {p1, p2}, Loyt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_3
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p2

    :try_start_b
    invoke-static {p1, p2}, Loyt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p1

    invoke-virtual {v7, p1}, Loye;->a(Ljava/lang/Throwable;)Z

    throw p1
.end method
