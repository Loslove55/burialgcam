.class public final Lalu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lalt;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lalt;

.field public final d:Ljava/lang/String;

.field public volatile e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lals;

    invoke-direct {v0}, Lals;-><init>()V

    sput-object v0, Lalu;->a:Lalt;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lalt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ldfb;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lalu;->d:Ljava/lang/String;

    iput-object p2, p0, Lalu;->b:Ljava/lang/Object;

    invoke-static {p3}, Ldfb;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lalt;

    iput-object p1, p0, Lalu;->c:Lalt;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lalu;
    .locals 2

    new-instance v0, Lalu;

    sget-object v1, Lalu;->a:Lalt;

    invoke-direct {v0, p0, p1, v1}, Lalu;-><init>(Ljava/lang/String;Ljava/lang/Object;Lalt;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Lalt;)Lalu;
    .locals 1

    new-instance v0, Lalu;

    invoke-direct {v0, p0, p1, p2}, Lalu;-><init>(Ljava/lang/String;Ljava/lang/Object;Lalt;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lalu;

    if-eqz v0, :cond_0

    check-cast p1, Lalu;

    iget-object v0, p0, Lalu;->d:Ljava/lang/String;

    iget-object p1, p1, Lalu;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lalu;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lalu;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xe

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Option{key=\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
