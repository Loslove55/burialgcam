.class public final Latm;
.super Ljava/lang/Object;

# interfaces
.implements Lasl;


# static fields
.field private static final a:Ljava/util/Set;


# instance fields
.field private final b:Latk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "file"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.resource"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "content"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Latm;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Latk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Latm;->b:Latk;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILalv;)Lask;
    .locals 0

    check-cast p1, Landroid/net/Uri;

    new-instance p2, Lask;

    new-instance p3, Lazv;

    invoke-direct {p3, p1}, Lazv;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Latm;->b:Latk;

    invoke-interface {p4, p1}, Latk;->a(Landroid/net/Uri;)Lame;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lask;-><init>(Lalr;Lame;)V

    return-object p2
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/net/Uri;

    sget-object v0, Latm;->a:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
