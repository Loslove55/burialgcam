.class final synthetic Lexs;
.super Ljava/lang/Object;

# interfaces
.implements Llum;


# instance fields
.field private final a:Llza;


# direct methods
.method public constructor <init>(Llza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexs;->a:Llza;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lexs;->a:Llza;

    invoke-interface {v0}, Llum;->close()V

    return-void
.end method
