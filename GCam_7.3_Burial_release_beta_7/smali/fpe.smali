.class final synthetic Lfpe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lfpg;


# direct methods
.method public constructor <init>(Lfpg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfpe;->a:Lfpg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lfpe;->a:Lfpg;

    sget-object v1, Lfpg;->a:Ljava/lang/String;

    iget-object v2, v0, Lfpg;->g:Loac;

    invoke-virtual {v2}, Loac;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Delete file: "

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1}, Lijd;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lfpg;->g:Loac;

    invoke-virtual {v2}, Loac;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, v0, Lfpg;->e:Lbyr;

    iget-object v1, v1, Lbyr;->f:Landroid/content/ContentResolver;

    iget-object v2, v0, Lfpg;->g:Loac;

    invoke-virtual {v2}, Loac;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v1, Lnzl;->a:Lnzl;

    iput-object v1, v0, Lfpg;->g:Loac;

    return-void
.end method
