.class public final Leri;
.super Ljava/lang/Object;

# interfaces
.implements Lerc;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NoOpLocProvider"

    invoke-static {v0}, Lijd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leri;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Llmj;
    .locals 1

    sget-object v0, Leri;->a:Ljava/lang/String;

    invoke-static {v0}, Lijd;->d(Ljava/lang/String;)V

    invoke-static {}, Llmj;->a()Llmj;

    move-result-object v0

    return-object v0
.end method

.method public final d()Loac;
    .locals 1

    sget-object v0, Leri;->a:Ljava/lang/String;

    invoke-static {v0}, Lijd;->d(Ljava/lang/String;)V

    sget-object v0, Lnzl;->a:Lnzl;

    return-object v0
.end method
