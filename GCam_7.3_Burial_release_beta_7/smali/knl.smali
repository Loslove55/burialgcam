.class public final Lknl;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static volatile a:Lkln;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkmy;

    invoke-direct {v0}, Lkmy;-><init>()V

    sput-object v0, Lknl;->a:Lkln;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lknm;->a:Lknm;

    if-nez v0, :cond_1

    sget-object v0, Lknl;->a:Lkln;

    if-eqz v0, :cond_2

    sget-object v0, Lknl;->a:Lkln;

    check-cast v0, Lkmy;

    iget v0, v0, Lkmy;->a:I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object p1, Lknf;->b:Lkne;

    invoke-virtual {p1}, Lkne;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0, p1}, Lkma;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    sget-object p0, Lknl;->a:Lkln;

    return-void
.end method
