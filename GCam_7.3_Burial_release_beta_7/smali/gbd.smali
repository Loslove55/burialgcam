.class public final Lgbd;
.super Ljava/lang/Object;

# interfaces
.implements Lpmo;


# instance fields
.field private final a:Lgbc;


# direct methods
.method public constructor <init>(Lgbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbd;->a:Lgbc;

    return-void
.end method


# virtual methods
.method public final a()Lfys;
    .locals 2

    iget-object v0, p0, Lgbd;->a:Lgbc;

    iget-object v0, v0, Lgbc;->a:Lfys;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcqy;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfys;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgbd;->a()Lfys;

    move-result-object v0

    return-object v0
.end method