.class public final Lbsz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Llvj;

.field public final b:Ljava/util/Set;

.field private c:Lbsy;


# direct methods
.method public constructor <init>(Llvj;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsz;->a:Llvj;

    iput-object p2, p0, Lbsz;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lobd;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lbsz;->a(Ljava/io/File;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lbsy;

    invoke-direct {v0, p0}, Lbsy;-><init>(Lbsz;)V

    iput-object v0, p0, Lbsz;->c:Lbsy;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lbsy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
